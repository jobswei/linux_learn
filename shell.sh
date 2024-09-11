#!/bin/bash

A=2
echo A=$A
echo "A+$A"
unset A
echo A=$A

readonly B=2
echo B=$B
# unset B 会报错


## 位置参数
echo $1,$2
echo $*
echo $@
echo $n