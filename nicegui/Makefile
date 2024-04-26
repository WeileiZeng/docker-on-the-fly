run:
	docker run -p 4001:8080 -v ${PWD}/:/app/ \
    -d --restart always --name nicegui zauberzeug/nicegui:latest
clean:
	docker stop nicegui
	docker rm nicegui
