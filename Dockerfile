FROM ubuntu:latest
RUN apt-get -y update && apt-get install -y python3.12 python3-pip python3.12-venv
RUN pip3 install flask
COPY app.py /opt/
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080