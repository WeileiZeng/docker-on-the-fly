# https://github.com/blang/latex-docker/blob/master/latexdockercmd.sh

run:
#echo ${UID}
	docker run --rm -i --user=1001 --net=none -v "${PWD}":/data blang/latex:ubuntu /bin/bash

test:
	docker run --rm -i --user=1001 --net=none -v "${PWD}":/data blang/latex:ubuntu pdflatex hello.tex


clean:
	rm hello.aux hello.log hello.pdf
	rm *~
