# Pull base image
FROM resin/raspberry-pi-python:3

COPY . /app
WORKDIR /app

EXPOSE 5000

RUN pip install --index-url=https://pypi.python.org/simple/ -r requirements.txt

ENTRYPOINT export FLASK_APP=app.py && flask run --host 0.0.0.0

