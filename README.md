# Docker Flask App for Raspberry Pi


Notes:

I couldn't get this to work with the newest Flask version, which changed the launch command and used an ENV VAR.

    docker build --rm -t rpipy_flask0.10 .
    docker run -ti -d -p 5000:5000 rpipy_flask0.10
    # if you need GPIO use the following (privileged)
    docker run -ti --restart=always --privileged -d -p 5000:5000 rpipy_flask0.10
    docker exec -it “container-id” /bin/bash

## Running without Docker, locally
    mkdir env 
    virtualenv -p python3 env
    source env/bin/activate
    pip install -r requirements.txt
    python app.py

## References

- https://blog.alexellis.io/hands-on-docker-raspberrypi/
- http://mattrichardson.com/Raspberry-Pi-Flask/
- http://containertutorials.com/docker-compose/flask-simple-app.html
- https://projects.raspberrypi.org/en/projects/python-web-server-with-flask

