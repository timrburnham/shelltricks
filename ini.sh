#!/bin/bash
section=$1
file=$2

awk -v RS= -v section=$section '$1 ~ \\[section\\]' $file | sed 1d
