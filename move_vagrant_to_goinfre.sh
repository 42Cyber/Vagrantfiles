#!/bin/bash
set -e

rm -rf ~/.vagrant* 
mkdir -p /goinfre/$USER/.vagrant.d
ln -s /goinfre/$USER/.vagrant.d ~/.vagrant.d
vagrant plugin expunge --reinstall --force
