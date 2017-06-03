#!/bin/bash
if [ -d $HOME/miniconda3 ]
then
    rm -rf $HOME/miniconda3
fi
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh -b
rm Miniconda3-latest-Linux-x86_64.sh
export PATH="$HOME/miniconda3/bin:$PATH"
echo 'export PATH=$HOME/miniconda3/bin:$PATH' >> ~/.bashrc
conda install jupyter notebook --yes
mkdir ~/.jupyter
touch ~/.jupyter/jupyter_notebook_config.py
echo "c.NotebookApp.token = u''" >> ~/.jupyter/jupyter_notebook_config.py
