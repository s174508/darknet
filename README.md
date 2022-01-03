# YOLO SWAgroup Yolo v3 for motorcycle detection and model training.
 

## Model an Training
This is our source code for building, training and applying a YOLOv3 model on the DTU HPC cluster. Weights files are too big to upload on GitHub, so here's a link to the [initial weights](https://pjreddie.com/media/files/darknet53.conv.74) we used for training the models. They need to be placed in the main directory of darknet.
See [Alexey's repository](https://github.com/AlexeyAB/darknet#how-to-train-to-detect-your-custom-objects) for in-depth info and guides on how to use the framework.

## Results 
The ouput files can be found in the reult folder, these are the log files we saved during training.   
To show how we used these files to create our plots in the report we created a [colab notebook](https://colab.research.google.com/drive/1KukcY0026BplZ4Mo4YG2Bz6EKsHtjZHN?usp=sharing). The corresponding jupyter notebook file can be found [here](YOLOSWAg_results.ipynb) under the name `YOLOSWAg_results.ipynb`.

## Detection
We've created a [Colab notebook](https://colab.research.google.com/drive/1ULT6TugpDRaLTk-CB3neusN_xTtCpTZk) that can be used to try out our models with some of the resulting weights from our training.

## Examples
Annotation examples for the different classes can be found in these Imgur albums: [singleclass](https://imgur.com/a/SrPj2mf), [multiclass](https://imgur.com/a/YZeurLa) and [fullclass](https://imgur.com/a/hpFyVRu).



Template stuff (remove whenever):

- bullet point
  - sub bullet

![Darknet Logo](http://pjreddie.com/media/files/darknet-black-small.png)

| Network Size               | Darknet, FPS (avg) | tkDNN TensorRT FP32, FPS | tkDNN TensorRT FP16, FPS | OpenCV FP16, FPS | tkDNN TensorRT FP16 batch=4, FPS | OpenCV FP16 batch=4, FPS | tkDNN Speedup |
|:--------------------------:|:------------------:|-------------------------:|-------------------------:|-----------------:|---------------------------------:|-------------------------:|--------------:|
|320                         | 100                | 116                      | **202**                  | 183              | 423                              | **430**                  | **4.3x**      |
|320                         | 100                | 116                      | **202**                  | 183              | 423                              | **430**                  | **4.3x**      |

```
code
```

inline `code`
