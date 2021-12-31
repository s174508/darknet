# YOLO SWAgroup Yolo v3 for motorcycle detection or something.

See [Alexey's repository](https://github.com/AlexeyAB/darknet) for in-depth info and guides

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

Weights files are too big for GitHub. Here's the [initial weights](https://pjreddie.com/media/files/darknet53.conv.74) we used. They need to be placed in the main directory of darknet. (Perhaps we should upload the weights ourselves along with our "final" weights)
