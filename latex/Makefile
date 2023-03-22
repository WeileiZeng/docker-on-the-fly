# https://github.com/blang/latex-docker/blob/master/latexdockercmd.sh

run:
	docker run --rm -i --user=${UID} --net=none -v "$PWD":/data blang/latex:ubuntu
#	docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data blang/latex:ubuntu

test:
	echo $
