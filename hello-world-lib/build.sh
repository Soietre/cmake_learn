#!/bin/bash

export DKROOT=/home/la/learnTutorial/cmakeLearn/learning-cmake/hello-world-lib/build
gcc test.c -I$DKROOT/include -L$DKROOT/lib -lhello -o test
