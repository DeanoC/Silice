#!/bin/bash

curdir=$PWD

mkdir ../../build/silice
cd ../../build/silice

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export PATH=$PATH:$DIR/jdk-14.0.1/bin/

cmake -DCMAKE_BUILD_TYPE=Release -G Ninja -S$curdir
ninja
cd $curdir
cp ../../build/silice/silice bin/silice