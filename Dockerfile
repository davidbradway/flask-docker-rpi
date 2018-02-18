# Pull base image
FROM resin/raspberry-pi-python:3
#FROM rpipy_flask0.10:latest

COPY . /app
WORKDIR /app

RUN pip install --index-url=https://pypi.python.org/simple/ -r requirements.txt

ENTRYPOINT ["python"]
CMD ["app.py"]
