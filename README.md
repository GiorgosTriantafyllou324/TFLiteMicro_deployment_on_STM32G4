# TFLiteMicro_deployment_on_STM32G4
 
###TinyML: CNN deployment on STM32G4 MCU with Tensorflow lite micro

The following project is for the NUCLEO-G491RE development board from ST Microelectronics, using the STM32G4 MCU.
Utilizing the framework Tensorflow Lite Micro, a Convolutional Neural Network (Classifier) is built and deployed to the MCU classifying the input 32x32 pixel images to 10 classes.
The dataset used for the training and validation is the CIFAR-10 that consists of 60000 color images (32x32p) and 10 mutually exclusive classes: airplane, automobile, bird, cat, deer, dog, frog, horse, ship, truck.
The CNN was trained based on the following Jupyter Notebook: [ Convolutional Neural Network (CNN) | TensorFlow Core](https://www.tensorflow.org/tutorials/images/cnn)
The model was then converted to a C array in order to be deployed to an MCU.