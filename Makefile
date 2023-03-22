hello-world:
	docker run hello-world

# ubuntu
ubuntu:
	docker run -it --rm ubuntu
ubuntu-with-volume:
	docker run -it --rm -v `pwd`/src:/root/src --workdir /root/ --name ubuntu ubuntu /bin/bash 


