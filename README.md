# jenkins-docker-demo
A Jenkins on Docker demo, using the Docker-outside-of-Docker technique.

This project allows to run Jenkins on Docker and use the underlying Docker installed on the host to run Docker commands. This technique is known as Docker outside Docker, as explained here: http://container-solutions.com/running-docker-in-jenkins-in-docker/

First, clone the project.

Then, run:

`docker-compose up --build`

Go to the browser and open `http://localhost:8081`. Jenkins should be running.

To retrieve the password required when running Jenkins for the first time, see the docker-compose execution logs.
