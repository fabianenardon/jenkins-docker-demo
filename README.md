# jenkins-docker-demo
A Jenkins on Docker demo, using the Docker-outside-of-Docker technique.

This project allows to run Jenkins on Docker and use the underlying Docker installed on the host to run Docker commands. This technique is known as Docker outside Docker, as explained here: http://container-solutions.com/running-docker-in-jenkins-in-docker/

First, clone the project.

Then, run:

`docker-compose up`

Go to the browser and open `http://localhost:8081`. Jenkins should be running.

This Jenkins project comes pre-configured with the user/password jenkins/jenkins.
