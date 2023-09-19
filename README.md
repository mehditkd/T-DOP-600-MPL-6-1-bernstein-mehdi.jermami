# B5 - Advanced DevOps (B-DOP-500) - Bernstein
In this project, I have orchestrated a symphony of containers, managed containerized applications and services using Kubernetes, and deployed a simple web poll application with multiple elements.

## Prerequisites
```
1. Minikube (or a Kubernetes as a Service platform such as Amazon Elastic Kubernetes Service, Google Kubernetes Engine, or Digital Ocean).
2. Shell script execution permission for `launch_app.sh`.
```

## Project Setup
Clone the project repository to your local system.
```
git clone T-DOP-600-MPL-6-1-bernstein-mehdi.jermami
cd T-DOP-600-MPL-6-1-bernstein-mehdi.jermami
```

## Deployment
The deployment process can be carried out with the provided launch_app.sh script. However, make sure to have Minikube running before executing the script.

```
minikube start
./launch_app.sh
```
This script will apply the configuration files and deploy the necessary services on your Kubernetes cluster.

## Access
You can access to interfaces on your localhost at :
```
http://poll.dop.io # For poll
http://result.dop.io # For result
```
