# YOLO SWAgroup Yolo v3 for motorcycle detection and model training.
## Short 
This repository is forked from [AlexeyAB's repository](https://github.com/AlexeyAB), and changed to fit our problem, thus parts of this code is our own, which we will state below.

## Model and Training
This is our source code for building, training and applying a YOLOv3 model on the DTU HPC cluster. Weights files are too big to upload on GitHub, so here's a link to the [initial weights](https://pjreddie.com/media/files/darknet53.conv.74) we used for training the models. They need to be placed in the main directory of darknet. Additionally, here are some of the weights we got from training (these are all the weights that we have used for the report):

[sc10000.weights](https://drive.google.com/uc?export=download&id=1wklpTEy81ja4hc_gFpvkgINI5EuhPPox), [sc40000.weights](https://drive.google.com/uc?export=download&id=1OBPpCRM0RzoqZFP8lqgAWIMAaMwk6Rs_), [sc80000.weights](https://drive.google.com/uc?export=download&id=1thk8p4XQoPwGu-PKtYGWQmW_-_M1fn_1)


[mc10000.weights](https://drive.google.com/uc?export=download&id=1-0REP3Qc_K-AcEMLzerSZEQQPwwYWPpa), [mc40000.weights](https://drive.google.com/uc?export=download&id=1z2wtcS7tl7OLQMpnLqm06m8NJf1uHzrk), [mc80000.weights](https://drive.google.com/uc?export=download&id=10h9jMU-SZdvDmHjsXq_pDoBL4BRr6sGn)


[fc10000.weights](https://drive.google.com/uc?export=download&id=1JyOqdfigz80wRVwtcTAM3Lzcg_9yUjxg), [fc40000.weights](https://drive.google.com/uc?export=download&id=1WCIATMEOWh1Csa7NwmDX1IJkKfQnQ4qI), [fc80000.weights](https://drive.google.com/uc?export=download&id=1Ow0rRmd0mAqgvlr55GTkijUl9pGKSiVR)

See [Alexey's repository](https://github.com/AlexeyAB/darknet#how-to-train-to-detect-your-custom-objects) for in-depth info and guides on how to use the framework.

## Results 
The ouput files can be found in the result folder, these are the log files we saved during training.   
To show how we used these files to create our plots in the report we created a [colab notebook](https://colab.research.google.com/drive/1KukcY0026BplZ4Mo4YG2Bz6EKsHtjZHN?usp=sharing). The corresponding jupyter notebook file can be found [here](YOLOSWAg_results.ipynb) under the name `YOLOSWAg_results.ipynb`.

## Detection
We've created a [Colab notebook](https://colab.research.google.com/drive/1ULT6TugpDRaLTk-CB3neusN_xTtCpTZk) that can be used to try out our models with some of the resulting weights from our training.

## Examples
Annotation examples for the different classes can be found in these Imgur albums: [singleclass](https://imgur.com/a/SrPj2mf), [multiclass](https://imgur.com/a/YZeurLa) and [fullclass](https://imgur.com/a/hpFyVRu).

## Which files did we change
 - [Makefile.md](Makefile.md)
 - [convolutional_layer.c](src/convolutional_layer.c) and [softmax_layer.c](src/softmax_layer.c)
     - The files originally declare some iterator variables inside for-loops, but this syntax doesn't seem to be allowed with the standard used by HPC. Therefore those declarations have been moved out right before the respective for-loops

## Which files are our own ? 
- [jobScript.sh](jobScript.sh)
- [Transform_Helmet_Dataset.ipynb](Transform_Helmet_Dataset.ipynb) 
- [YOLOSWAg_results.ipynb](YOLOSWAg_results.ipynb)
- configurations files for the three classe in the cfg folder
     1. [yolov3-singleclass.cfg](cfg/yolov3-singleclass.cfg)
     2. [yolov3-multiclass.cfg](cfg/yolov3-multiclass.cfg)
     3. [yolov3-fullclass.cfg](cfg/yolov3-fullclass.cfg)
-  .data files for the three classes in the data folder
     1. [singleclass.data](data/singleclass.data)
     2. [multiclass.data](data/multiclass.data)
     3. [fullclass.data](data/fullclass.data)
-  .names files for the three classes in the data folder
     1. [singleclass.names](data/singleclass.names)
     2. [multiclass.names](data/multiclass.names)
     3. [fullclass.names](data/fullclass.names)
- The train, test and validation files containing pathes to all image pathes that are used during training 
     1. [train.txt](data/train.txt)
     2. [test.txt](data/test.txt)
     3. [validation.txt](data/validation.txt)
- all files in the three result directories in the result folder
     1. singleclass
     2. multiclass
     3. fullclass
