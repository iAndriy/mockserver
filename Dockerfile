FROM python:3.7-slim-buster@sha256:b00a083fb7fbb023ce710f09d517cd7fa5d8ca0ebe2374780b90977a20c75684
ENV ADDRESS="0.0.0.0"
ENV DIR="/mock_server"
RUN apt-get update && \
	apt-get install -y make gcc && \
	pip install --upgrade pip && \
	pip install mock-server==0.3.9

EXPOSE 8888
ENTRYPOINT mock-server --dir=${DIR} --address=$ADDRESS $@
