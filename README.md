## Simple FLASK App using Docker

This is a starter repo for building Flask app using Docker.

### Run the Flask App

1. Install `docker` CLI from [here](https://docs.docker.com/engine/install/)
2. Pull the pre-built image from hub
`docker pull pavanpkulkarni/pythondocker-my-flask-app:1.1`
3. Run the app from docker
`docker run --publish 5001:5001 pavanpkulkarni/pythondocker-my-flask-app:1.1`
4. Open browser http://127.0.0.1:5001/ to view the Flask App

### Files List

- [app.py](app.py) :
  - Source code for simple Flask app that will print `Hello, World!` on browser
  - This is exposed on port `5001`
- [docker-compose.yml](docker-compose.yml) :
  - contains the yaml configs to build a docker image
  - map ports between local and container
- [Dockerfile](Dockerfile) :
  - Dockerfile to build a python image
  - all the files from repo are copied to image
  - expose port 5001 on image
  - run cmd specified in the file.
- [list_of_commands.txt](list_of_commands.txt)
  - cheat sheet for docker commands
  - contains commands to create and push image to hub
- [RemoveContainersAndImages.sh](RemoveContainersAndImages.sh)
  - Generic script to delete all containers and images. 
- [requirements.txt](requirements.txt)
  - List of packages to be installed on image