#! /usr/bin/env bash

export PYTHONPATH=$PYTHONPATH:$(pwd)

CORRUPT=$1
STRONG_OOD=$2


python TENT.py \
	--dataset cifar10OOD \
	--dataroot ./data/cifar \
	--strong_OOD ${STRONG_OOD} \
	--resume ./results/cifar10_joint_resnet50 \
	--corruption ${CORRUPT} 

