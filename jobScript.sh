#!/bin/sh 
### General options 
### -- specify queue -- 
#BSUB -q gpuv100
#BSUB -gpu "num=1"
### -- set the job Name -- 
#BSUB -J DLProject9
### -- ask for number of cores (default: 1) -- 
#BSUB -n 1
### -- specify that we need 2GB of memory per core/slot -- 
#BSUB -R "rusage[mem=2GB]"
### -- specify that we want the job to quit if it exceeds 4 GB per core/slot -- 
#BSUB -M 4GB
### -- set walltime limit: hh:mm -- 
#BSUB -W 02:00 
### -- choose email address to notify when complete -- 
###BSUB -u sxxxxxx@student.dtu.dk
### -- send notification at completion -- 
###BSUB -N 
### -- Specify the output and error file -- 
###BSUB -oo Output.out 
###BSUB -oe Error.err

module load cudnn/v8.0.4.30-prod-cuda-11.1
module load opencv/3.4.16-python-3.8.11-cuda-11.1

###Train from pre-trained weights
###./darknet detector train data/obj.data cfg/yolov3-singleclass.cfg darknet53.conv.74 -map -dont_show | tee results/output.log

###Continue fine-tuning
###./darknet detector train data/obj.data cfg/yolov3-singleclass.cfg backup/yolov3-singleclass_last.weights -map -dont_show | tee results/output2.log

###Test on video
./darknet detector demo data/obj.data cfg/yolov3-singleclass.cfg backup/yolov3-singleclass_80000.weights -dont_show test.mp4 -out_filename results/result.mp4

###Test on image
###./darknet detector test data/obj.data cfg/yolov3-singleclass.cfg backup/yolov3-singleclass_80000.weights -dont_show test.jpg