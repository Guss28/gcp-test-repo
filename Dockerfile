FROM ubuntu:16.04
RUN apt-get update && apt-get install -y python python-pip
RUN useradd -ms /bin/bash ajay28s
USER ajay28s
COPY . /opt/
EXPOSE 8080
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
