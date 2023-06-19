#sample docker cmd to run jupyter lab on server

all: help
#python 3.10
#VERSION=jupyter/datascience-notebook:85f615d5cafa
#python 3.9
VERSION=jupyter/datascience-notebook:python-3.9.13
PORT=4000
# If port already occupied, change to 4000,4001,4002,...,5000,50001,... 

jupyter:
	docker run -it --rm --user `id -u` --group-add users -p $(PORT):8888 -e JUPYTER_TOKEN=passwd -v "${PWD}":/home/jovyan/work $(VERSION)

jupyter-gpu:
	docker run --gpus all -it --rm --user `id -u` --group-add users -p $(PORT):8888 -e JUPYTER_TOKEN=passwd -v "${PWD}":/home/jovyan/work $(VERSION)



IP=10.11.5.66 #change to your server IP
help:
	echo "make jupyter"
	echo "then visit IP:PORT like $(IP):$(PORT), use 'passwd' for token"
	echo "${PWD} will be mapped to work/"




# cmd to use sustech mirror for pip. run both cmd in order!
pip-mirror:
        pip install --upgrade pip --index-url https://mirrors.sustech.edu.cn/pypi/simple
        pip config set global.index-url https://mirrors.sustech.edu.cn/pypi/simple


#hello world test
test:
	docker run hello-world
# If one fail to run the above cmd and see `permission denied` error. You may run it with `sudo`, or add $USER to the `docker group`
# read more on https://docs.docker.com/engine/install/linux-postinstall/
