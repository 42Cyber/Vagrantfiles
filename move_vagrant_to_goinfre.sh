#!/bin/bash
set -e

rm -rf ~/.vagrant* 
mkdir -p /goinfre/.vagrant.d
ln -s /goinfre/.vagrant.d ~/.vagrant.d
