FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python-pip
RUN pip install flask

COPY index.py /opt/index.py

ENTRYPOINT FLASK_APP=/opt/index.py flask run --host=0.0.0.0
