[![CircleCI](https://dl.circleci.com/status-badge/img/gh/Shaovafest/udacity-microservice/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/Shaovafest/udacity-microservice/tree/main)



## Project Overview

Using AWS and Kubernetes to containerize and operationalize a Machine Learning Microservice API.

This project contains a pre-trained machine learning microsevice developed using the `sklearn` model. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing).

### Project Tasks Accomplished

* Testing the project code using linting
* Completing a Dockerfile to containerize the application
* Deploying the containerized application using Docker and making a prediction
* Improving the log statements in the source code for the application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction
* Upload a complete Github repo with CircleCI to indicate that your code has been tested


## Requirements to Setup the Environment

* A virtual python 3.7 environment
* Github account
* Docker account and installation
* Hadolint
* Kubernetes (Minikube)

## Install dependencies

* Set up the environment by running make setup. This will create a virtual environment in your home directory called .udacity-microservice
* Install dependencies by running make install
* Install hadolint to lint the Docker file
* Run lint check by running make lint

## Run Docker

* Run minikube start to ensure kubectl is running
* Run the application on docker using the bash script ./run_docker.sh

## Upload to Docker 
* To upload to docker hub, run ./upload_docker.sh (personalize the docker path)
* look out for incompatible naming conventions

## Deploy with Kubernetes
* To deploy with kubernetes, run ./run_kubernetes.sh

## Project files

* docker_out.txt: Output of prediction to docker container
* kubernetes_out.txt: Output of prediction to kubernetes cluster
* config.yml: Circeci config yml file
* app.py: Flask application
* Dockerfile: Contains commands for copying the flask app to dockerhub
* make_prediction.sh: Script that gives a payload
* Makefile: For installing testing and linting
* requirements.txt: list of required dependencies in the container
* run_docker.sh: To run and build a docker image
* upload_docker.sh: upload your built image to docker
* run_kubernetes.sh: To deploy application using kubectl
