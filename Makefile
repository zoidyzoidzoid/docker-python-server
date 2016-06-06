IMAGE='python-http-server-example'
USER='zoidbergwill'
VERSION=1

build: src/Dockerfile
	@docker build -t ${USER}/${IMAGE}:latest -t ${USER}/${IMAGE}:${VERSION} src

push: src/Dockerfile
	@docker push ${USER}/${IMAGE}:${VERSION}
	@docker push ${USER}/${IMAGE}:latest

run: build
	@docker run -it --rm -p 8000:8000 ${USER}/${IMAGE}:latest

shell: build
	@docker run -it --rm -p 8000:8000 ${USER}/${IMAGE}:latest sh

clean:
	-docker rmi ${USER}/${IMAGE}:latest
