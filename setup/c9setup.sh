#!/bin/bash
if [ -d $HOME/anaconda2 ]
then
    rm -rf $HOME/anaconda2
fi
wget http://repo.continuum.io/archive/Anaconda2-4.0.0-Linux-x86_64.sh -O Anaconda2-4.0.0-Linux-x86_64.sh
bash Anaconda2-4.0.0-Linux-x86_64.sh -b
export PATH="$HOME/anaconda2/bin:$PATH"
echo 'export PATH=$HOME/anaconda2/bin:$PATH' >> ~/.bashrc
