#! /bin/sh 

realpath=$(readlink -f "$0")
basedir=$(dirname "$realpath")
#export PATH=$PATH:$basedir

echo $PATH
