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
