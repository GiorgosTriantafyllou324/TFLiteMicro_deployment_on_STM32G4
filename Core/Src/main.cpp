 /* USER CODE BEGIN Header */
/**
  ******************************************************************************
  * @file           : main.c
  * @brief          : Main program body
  ******************************************************************************
  * @attention
  *
  * Copyright (c) 2024 STMicroelectronics.
  * All rights reserved.
  *
  * This software is licensed under terms that can be found in the LICENSE file
  * in the root directory of this software component.
  * If no LICENSE file comes with this software, it is provided AS-IS.
  *
  ******************************************************************************
  */
/* USER CODE END Header */
/* Includes ------------------------------------------------------------------*/
#include "main.h"

/* Private includes ----------------------------------------------------------*/
/* USER CODE BEGIN Includes */
#include <string.h>
#include <math.h>
#include "tensorflow/lite/micro/debug_log.h"

#include "tensorflow/lite/micro/kernels/micro_ops.h"
#include "tensorflow/lite/micro/tflite_bridge/micro_error_reporter.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_mutable_op_resolver.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/micro/micro_log.h"
#include "tensorflow/lite/micro/system_setup.h"
#include "tensorflow/lite/schema/schema_generated.h"

#include "cnn_model.h"
#include "inference_array.h"

// User defines are in tensorflow/lite/core/c/c_api_types.h

/* USER CODE END Includes */

/* Private typedef -----------------------------------------------------------*/
/* USER CODE BEGIN PTD */

/* USER CODE END PTD */

/* Private define ------------------------------------------------------------*/
/* USER CODE BEGIN PD */

void softmax(float input[], int size);
const char* GetClassName(uint8_t class_code);

/* USER CODE END PD */

/* Private macro -------------------------------------------------------------*/
/* USER CODE BEGIN PM */

/* USER CODE END PM */

/* Private variables ---------------------------------------------------------*/
UART_HandleTypeDef hlpuart1;

TIM_HandleTypeDef htim16;

/* USER CODE BEGIN PV */

// TF-Lite Globals
namespace
{
	tflite::ErrorReporter* error_reporter = nullptr;
	const tflite::Model* model = nullptr;
	tflite::MicroInterpreter* interpreter = nullptr;
	TfLiteTensor* model_input = nullptr;
	TfLiteTensor* model_output = nullptr;

// 38 * 1024 is the minimum kTensorArenaSize for which
// no error is generated
	constexpr int kTensorArenaSize = 38 * 1024;
	__attribute__((aligned(16)))uint8_t tensor_arena[kTensorArenaSize];
}


// Array to store the received data from UART (VCP)
uint8_t uart_rx_data[10];

/* USER CODE END PV */

/* Private function prototypes -----------------------------------------------*/
void SystemClock_Config(void);
static void MX_GPIO_Init(void);
static void MX_LPUART1_UART_Init(void);
static void MX_TIM16_Init(void);
/* USER CODE BEGIN PFP */

/* USER CODE END PFP */

/* Private user code ---------------------------------------------------------*/
/* USER CODE BEGIN 0 */

/* USER CODE END 0 */

/**
  * @brief  The application entry point.
  * @retval int
  */
int main(void)
{
  /* USER CODE BEGIN 1 */
  char buf[150];
  TfLiteStatus tflite_status;
  uint32_t num_elements;
  /* USER CODE END 1 */

  /* MCU Configuration--------------------------------------------------------*/

  /* Reset of all peripherals, Initializes the Flash interface and the Systick. */
  HAL_Init();

  /* USER CODE BEGIN Init */

  /* USER CODE END Init */

  /* Configure the system clock */
  SystemClock_Config();

  /* USER CODE BEGIN SysInit */

  /* USER CODE END SysInit */

  /* Initialize all configured peripherals */
  MX_GPIO_Init();
  MX_LPUART1_UART_Init();
  MX_TIM16_Init();
  /* USER CODE BEGIN 2 */

  // Start timer / counter
  HAL_TIM_Base_Start(&htim16);

  // Set up logging (modify tensorflow/lite/micro/debug_log.cc)
  static tflite::MicroErrorReporter micro_error_reporter;
  error_reporter = &micro_error_reporter;

  // Say something to test error reporter
  error_reporter->Report("\r\n------------------------------------");
  error_reporter->Report("STM32 TF lite test");


  // Map the model into a usable data structure. This doesn't involve any
  // copying or parsing, it's a very lightweight operation.
  model = tflite::GetModel(cnn_model_int8);
  if (model->version() != TFLITE_SCHEMA_VERSION) {
	  error_reporter->Report("Model provided in schema version not equal to supported version");
	  while(1);
  }

  // Pull in only the operation implementations we need.
  // This relies on a complete list of all the ops needed by this graph.
  // NOLINTNEXTLINE(runtime-global-variables)
  static tflite::MicroMutableOpResolver<6> micro_op_resolver;
  micro_op_resolver.AddConv2D(tflite::Register_CONV_2D_INT8());
  micro_op_resolver.AddReshape();
  micro_op_resolver.AddQuantize();
  micro_op_resolver.AddMaxPool2D(tflite::Register_MAX_POOL_2D_INT8());
  micro_op_resolver.AddFullyConnected(tflite::Register_FULLY_CONNECTED_INT8());
  micro_op_resolver.AddDequantize();


  // Build an interpreter to run the model with.
  // NOLINTNEXTLINE(runtime-global-variables)
  static tflite::MicroInterpreter static_interpreter(model, micro_op_resolver, tensor_arena, kTensorArenaSize);
  interpreter = &static_interpreter;

  // Allocate memory from the tensor_arena for the model's tensors.
  TfLiteStatus allocate_status = interpreter->AllocateTensors();
  if (allocate_status != kTfLiteOk) {
	  error_reporter->Report("AllocateTensors() failed");
	  while(1);
  }

  // Get information about the memory area to use for the model's input.
  model_input = interpreter->input(0);
  model_output = interpreter->output(0);
  error_reporter->Report("Fully Optimized Setup OK!");

  // Print input / output tensor elements
  num_elements = model_input->bytes / sizeof(float);
  sprintf(buf, "Model input / output elements: %lu / %d", num_elements, model_output->bytes / sizeof(float));
  error_reporter->Report(buf);

  // Print input tensor type
  TfLiteType input_tensor_type = interpreter->input_tensor(0)->type;
  sprintf(buf, "Input Tensor Type: %s", TfLiteTypeGetName(input_tensor_type));
  error_reporter->Report(buf);

  // Print output tensor type
  TfLiteType output_tensor_type = interpreter->output_tensor(0)->type;
  sprintf(buf, "Output Tensor Type: %s\r\n", TfLiteTypeGetName(output_tensor_type));
  error_reporter->Report(buf);

  // Start the interrupt handling of UART (VCP) reception
  HAL_UART_Receive_IT(&hlpuart1, uart_rx_data, sizeof(uart_rx_data));

  /* USER CODE END 2 */

  /* Infinite loop */
  /* USER CODE BEGIN WHILE */

  while (1)
  {
	  // Accuracy variables
	  uint8_t total_samples = 0;
	  uint8_t correct_predictions = 0;

	  // Run inference for every test image
	  for (uint8_t img = 0; img < sizeof(inference_array) / sizeof(inference_array[0]); ++img)
	  {
		  // Fill in input buffer with 1 inference image
		  for (uint16_t i = 0; i < num_elements; ++i)
		  {
			  model_input->data.f[i] = inference_array[img][i];
		  }

		  // Get current timestamp
		  //timestamp = htim16.Instance->CNT;
		  uint32_t tick0 = HAL_GetTick();

		  // Run inference
		  tflite_status = interpreter->Invoke();
		  if (tflite_status != kTfLiteOk)
			  error_reporter->Report("Invoke failed :(");

		  // Print needed time to run the inference
		  sprintf(buf, "Process image time: %lu (ms)", HAL_GetTick() - tick0);
		  error_reporter->Report(buf);

		  // Read output prediction of neural network
		  // The output is stored in data.f[0-9]
		  float soft_table[10];
		  for (uint8_t i = 0; i < 10; ++i)
			  soft_table[i] = model_output->data.f[i];

		  // Run softmax function to find probability distribution
		  softmax(soft_table, 10);

		  // Find most probable class and print the results
		  float max_probability = soft_table[0];
		  uint8_t index_max_probability = 0;
		  for (uint8_t i = 1; i < 10; ++i)
		  {
			  if (soft_table[i] > max_probability)
			  {
				  max_probability = soft_table[i];
				  index_max_probability = i;
			  }
		  }
		  sprintf(buf, "Max probability: %0.2f  |  Prediction: %s  |  Ground truth label: %s \r\n",
				       max_probability, GetClassName(index_max_probability), GetClassName(inference_labels[img]));
		  error_reporter->Report(buf);

		  // Update accuracy variables
		  total_samples++;
		  if (index_max_probability == inference_labels[img])
			  correct_predictions++;

	  }
	  // Report accuracy
	  sprintf(buf, "Accuracy: %0.2f", 1.0 * correct_predictions / total_samples);
	  error_reporter->Report(buf);

	  error_reporter->Report("\r\n--------- Iteration done ---------\r\n");

    /* USER CODE END WHILE */

    /* USER CODE BEGIN 3 */
  }
  /* USER CODE END 3 */
}

/**
  * @brief System Clock Configuration
  * @retval None
  */
void SystemClock_Config(void)
{
  RCC_OscInitTypeDef RCC_OscInitStruct = {0};
  RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};

  /** Configure the main internal regulator output voltage
  */
  HAL_PWREx_ControlVoltageScaling(PWR_REGULATOR_VOLTAGE_SCALE1);

  /** Initializes the RCC Oscillators according to the specified parameters
  * in the RCC_OscInitTypeDef structure.
  */
  RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
  RCC_OscInitStruct.HSIState = RCC_HSI_ON;
  RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
  RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
  RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
  RCC_OscInitStruct.PLL.PLLM = RCC_PLLM_DIV4;
  RCC_OscInitStruct.PLL.PLLN = 75;
  RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV2;
  RCC_OscInitStruct.PLL.PLLQ = RCC_PLLQ_DIV2;
  RCC_OscInitStruct.PLL.PLLR = RCC_PLLR_DIV2;
  if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
  {
    Error_Handler();
  }

  /** Initializes the CPU, AHB and APB buses clocks
  */
  RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
                              |RCC_CLOCKTYPE_PCLK1|RCC_CLOCKTYPE_PCLK2;
  RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
  RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
  RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV1;
  RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;

  if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_4) != HAL_OK)
  {
    Error_Handler();
  }
}

/**
  * @brief LPUART1 Initialization Function
  * @param None
  * @retval None
  */
static void MX_LPUART1_UART_Init(void)
{

  /* USER CODE BEGIN LPUART1_Init 0 */

  /* USER CODE END LPUART1_Init 0 */

  /* USER CODE BEGIN LPUART1_Init 1 */

  /* USER CODE END LPUART1_Init 1 */
  hlpuart1.Instance = LPUART1;
  hlpuart1.Init.BaudRate = 115200;
  hlpuart1.Init.WordLength = UART_WORDLENGTH_8B;
  hlpuart1.Init.StopBits = UART_STOPBITS_1;
  hlpuart1.Init.Parity = UART_PARITY_NONE;
  hlpuart1.Init.Mode = UART_MODE_TX_RX;
  hlpuart1.Init.HwFlowCtl = UART_HWCONTROL_NONE;
  hlpuart1.Init.OneBitSampling = UART_ONE_BIT_SAMPLE_DISABLE;
  hlpuart1.Init.ClockPrescaler = UART_PRESCALER_DIV1;
  hlpuart1.AdvancedInit.AdvFeatureInit = UART_ADVFEATURE_NO_INIT;
  if (HAL_UART_Init(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetTxFifoThreshold(&hlpuart1, UART_TXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_SetRxFifoThreshold(&hlpuart1, UART_RXFIFO_THRESHOLD_1_8) != HAL_OK)
  {
    Error_Handler();
  }
  if (HAL_UARTEx_DisableFifoMode(&hlpuart1) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN LPUART1_Init 2 */

  /* USER CODE END LPUART1_Init 2 */

}

/**
  * @brief TIM16 Initialization Function
  * @param None
  * @retval None
  */
static void MX_TIM16_Init(void)
{

  /* USER CODE BEGIN TIM16_Init 0 */

  /* USER CODE END TIM16_Init 0 */

  /* USER CODE BEGIN TIM16_Init 1 */

  /* USER CODE END TIM16_Init 1 */
  htim16.Instance = TIM16;
  htim16.Init.Prescaler = 80 - 1;
  htim16.Init.CounterMode = TIM_COUNTERMODE_UP;
  htim16.Init.Period = 65535;
  htim16.Init.ClockDivision = TIM_CLOCKDIVISION_DIV1;
  htim16.Init.RepetitionCounter = 0;
  htim16.Init.AutoReloadPreload = TIM_AUTORELOAD_PRELOAD_DISABLE;
  if (HAL_TIM_Base_Init(&htim16) != HAL_OK)
  {
    Error_Handler();
  }
  /* USER CODE BEGIN TIM16_Init 2 */

  /* USER CODE END TIM16_Init 2 */

}

/**
  * @brief GPIO Initialization Function
  * @param None
  * @retval None
  */
static void MX_GPIO_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStruct = {0};
/* USER CODE BEGIN MX_GPIO_Init_1 */
/* USER CODE END MX_GPIO_Init_1 */

  /* GPIO Ports Clock Enable */
  __HAL_RCC_GPIOC_CLK_ENABLE();
  __HAL_RCC_GPIOF_CLK_ENABLE();
  __HAL_RCC_GPIOA_CLK_ENABLE();
  __HAL_RCC_GPIOB_CLK_ENABLE();

  /*Configure GPIO pin Output Level */
  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);

  /*Configure GPIO pin : B1_Pin */
  GPIO_InitStruct.Pin = B1_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_IT_RISING;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);

  /*Configure GPIO pin : LD2_Pin */
  GPIO_InitStruct.Pin = LD2_Pin;
  GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
  GPIO_InitStruct.Pull = GPIO_NOPULL;
  GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
  HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);

  /* EXTI interrupt init*/
  HAL_NVIC_SetPriority(EXTI15_10_IRQn, 0, 0);
  HAL_NVIC_EnableIRQ(EXTI15_10_IRQn);

/* USER CODE BEGIN MX_GPIO_Init_2 */
/* USER CODE END MX_GPIO_Init_2 */
}

/* USER CODE BEGIN 4 */

extern "C" void DebugLog(const char* format, va_list args)
{
	char s[100];
	vsprintf(s, format, args);
	va_end(args);

	HAL_UART_Transmit(&hlpuart1, (uint8_t*)s, strlen(s), HAL_MAX_DELAY);
}


/* Function to apply softmax to the output tensor values */
void softmax(float input[], int size)
{
    float sum_exp = 0.0;

    // Calculate the sum of exponentials of input values
    for (int i = 0; i < size; ++i) {
        sum_exp += std::exp(input[i]);
    }

    // Apply softmax to each input value
    for (int i = 0; i < size; ++i) {
        input[i] = std::exp(input[i]) / sum_exp;
    }
}


/* Returns the actual name of the class */
const char* GetClassName(uint8_t class_code) {
  switch (class_code) {
    case 0:
      return "AIRPLANE";
    case 1:
      return "AUTOMOBILE";
    case 2:
      return "BIRD";
    case 3:
      return "CAT";
    case 4:
      return "DEER";
    case 5:
      return "DOG";
    case 6:
      return "FROG";
    case 7:
      return "HORSE";
    case 8:
      return "SHIP";
    case 9:
      return "TRUCK";
  }
  return "Unknown";
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *huart)
{
    if (huart->Instance == LPUART1)
    {
        // UART receive interrupt callback function
        // Handle received data here
        // For example, you can process the received data or store it in a buffer

    	HAL_GPIO_TogglePin(GPIOA, LD2_Pin);
    	HAL_UART_Receive_IT(&hlpuart1, uart_rx_data, sizeof(uart_rx_data));
    }

    HAL_UART_IRQHandler(&hlpuart1);
}

/* USER CODE END 4 */

/**
  * @brief  This function is executed in case of error occurrence.
  * @retval None
  */
void Error_Handler(void)
{
  /* USER CODE BEGIN Error_Handler_Debug */
  /* User can add his own implementation to report the HAL error return state */
  __disable_irq();
  while (1)
  {
  }
  /* USER CODE END Error_Handler_Debug */
}

#ifdef  USE_FULL_ASSERT
/**
  * @brief  Reports the name of the source file and the source line number
  *         where the assert_param error has occurred.
  * @param  file: pointer to the source file name
  * @param  line: assert_param error line source number
  * @retval None
  */
void assert_failed(uint8_t *file, uint32_t line)
{
  /* USER CODE BEGIN 6 */
  /* User can add his own implementation to report the file name and line number,
     ex: printf("Wrong parameters value: file %s on line %d\r\n", file, line) */
  /* USER CODE END 6 */
}
#endif /* USE_FULL_ASSERT */
