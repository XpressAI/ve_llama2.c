#!/usr/bin/env bash


if true
then

/opt/nec/ve/bin/ncc \
	-O4 \
	-finline-functions \
	-finline-max-depth=20 \
	-ffast-math \
	-msched-block \
    -fopenmp \
    -o run \
	run.c \
	-lm \
    -lcblas \
    -lblas_openmp

    #-mparallel \
    #-fopenmp \
    #-ftrace \


else

/opt/nec/ve/bin/ncc \
	-O4 \
	-finline-functions \
	-finline-max-depth=20 \
	-ffast-math \
	-msched-block \
    -o run \
	run.c \
	-lm
fi
#    -mparallel \


#gcc -Ofast -ffast-math -fopenmp -o run run.c -lm
