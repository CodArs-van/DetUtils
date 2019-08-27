#/bin/bash

# System packages
sudo apt-get update -y
sudo apt-get install tmux -y

# Python packages
python -m pip install jupyter jupyterlab cython --user

# mmdet
rm -rf mmdetection
git clone https://github.com/open-mmlab/mmdetection.git
pushd mmdetection
python setup.py develop --user
popd
