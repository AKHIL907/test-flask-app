#!/bin/bash
set -e
# Pull docker image from docker hub
docker pull akhil0531/flask-app
# Run the docker image as container
docker run -d -p 5000:5000 akhil0531/flask-app
