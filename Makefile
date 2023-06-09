# table of contents
# - [x] hello world
# - [x] ubuntu, with sample basic commands
# - [ ] jupyter notebook
# - [ ] frp, nextcloud, dockovpn
# - [ ] plex, samba

# local build
# - [ ] itpp


hello-world:
	docker run hello-world

# ubuntu
ubuntu:
	docker run -it --rm ubuntu
ubuntu-with-volume:
	docker run -it --rm -v `pwd`/src:/root/src --workdir /root/ --name ubuntu ubuntu /bin/bash 


# cuda
# Adding the NVIDIA Runtime for docker if haven't done
# https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/user-guide.html
# https://github.com/NVIDIA/nvidia-docker
nvidia-smi:
	docker run --gpus=all --rm nricklin/ubuntu-gpu-test nvidia-smi
# some how the official image nvidia/cuda is not working, use  nricklin/ubuntu-gpu-test instead
#	docker run --rm --gpus all nvidia/cuda nvidia-smi



### python related
#3.10
#VERSION=jupyter/datascience-notebook:85f615d5cafa
VERSION=jupyter/datascience-notebook:python-3.9.13
PORT=4000
jupyter:
	docker run --gpus all -it --rm --user ${UID} --group-add users -p $(PORT):8888 -e JUPYTER_TOKEN=passwd -v "${PWD}":/home/jovyan/work $(VERSION)


jupyter-cpu:
	docker run -it --rm --user 1001 --group-add users -p 80:8888 -v "${PWD}":/home/jovyan/work jupyter/datascience-notebook:85f615d5cafa

#1001 is the user id, change with `echo $UID`
#visit <ip> directly when use port 80; one can also use 4000,4001,...

#PORT=4002
jupyter-GPU-pytorch:
	docker run --gpus all -it --rm --user 1001 --group-add users -p $PORT:8888 -v "${PWD}":/home/jovyan/work pytorch/pytorch:2.0.0-cuda11.7-cudnn8-runtime


python3:#with git installed
	docker run -it --rm --network host python:3.9.16 bash

# cmd to use sustech mirror for pip. run both cmd!
pip-mirror:
        pip install --upgrade pip --index-url https://mirrors.sustech.edu.cn/pypi/simple
        pip config set global.index-url https://mirrors.sustech.edu.cn/pypi/simple


google-mirror:
	docker run -p 4000:80 bohan/onemirror
#mirror site for google search
#this has been ran on cherenkov: http://cherenkov.dyn.ucr.edu:4000/
# see https://www.22vd.com/79328.html
# see https://github.com/bohanyang/onemirror
