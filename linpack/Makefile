#single core test
linpack:
	docker run -it --rm linpack
linpack-size:
	docker run -it --rm -e LINPACK_ARRAY_SIZE=600 linpack
#you need to build the image locally first
#the source is frome submodule
#git submodule add git@github.com:ereyes01/linpack.git
# get submodule
#git submodule init
#git submodule update
# or
#git clone --recurse-submodules <repo name>
#read more on https://git-scm.com/book/en/v2/Git-Tools-Submodules
build-linpack:
	cd linpack && docker build -t linpack .


# parallel test
hpl:
	echo "cd bin/Linux"
	docker run -it -v ${PWD}/hpl-tuning-sample:/usr/local/hpl-2.2/bin/Linux/hpl-tuning-sample ashael/hpl

