# TFLiteMicro_deployment_on_STM32G4
 
###TinyML: CNN deployment on STM32G4 MCU with Tensorflow lite micro

The following project is for the NUCLEO-G491RE development board from ST Microelectronics, using the STM32G4 MCU.
Utilizing the framework Tensorflow Lite Micro, a Convolutional Neural Network (Classifier) is built and deployed to the MCU classifying the input 32x32 pixel images to 10 classes.
The dataset used for the training and validation is the CIFAR-10 that consists of 60000 color images (32x32p) and 10 mutually exclusive classes: airplane, automobile, bird, cat, deer, dog, frog, horse, ship, truck.
The CNN was trained based on the following Jupyter Notebook: [ Convolutional Neural Network (CNN) | TensorFlow Core](https://www.tensorflow.org/tutorials/images/cnn)
The model was then converted to a C array in order to be deployed to the MCU.
Some images from the CIFAR-10 dataset were also converted to a C array to test the inference of the model on the MCU. The achieved accuracy on the model is 88%.
The code runs continuously through the images loaded in the flash memory and classifies them to a class. The results of each image (prediction, ground truth label, total latency and latency for each layer in the network) are sent through the USB (virtual comm port) and can be read from the PC connected using a Serial reader.

The Project focuses on the reduction of the memory footprint and the latency to process each image. Specifically, the weight have been quantized to 8 bits (from the original 32 bits) and the -O3 compiler optimization option is chosen from the STM32CubeIDE. Also, the optimized kernels of CMSIS-NN have been put into use with the flag: 
```
--makefile_options="OPTIMIZED_KERNEL_DIR=cmsis_nn"
```
