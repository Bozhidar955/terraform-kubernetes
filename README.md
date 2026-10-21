Terraform Kubernetes Deployment

This project demonstrates deploying and managing applications on a Kubernetes cluster using Terraform and Kubernetes YAML manifests.

The project uses a Kubernetes environment (k3s) and Nginx as the sample application. It explores Infrastructure as Code (IaC), application scaling, Kubernetes networking, and external access through Ingress.

This repository is part of my hands-on DevOps learning journey.

Technologies Used

Terraform — Infrastructure as Code and Kubernetes resource management

Kubernetes — Container orchestration

k3s — Lightweight Kubernetes distribution

Nginx — Sample web server application

Traefik — Ingress controller commonly included with k3s

YAML — Kubernetes resource definitions

Linux / Ubuntu — System administration

Git and GitHub — Version control

Repository Structure

terraform-kubernetes/
├── .gitignore
├── .terraform.lock.hcl
├── main.tf
├── deployment.yaml
├── service.yaml
└── ingress.yaml

The .terraform/ directory contains locally initialized Terraform providers and other working files. It should generally be excluded from Git.

Project Components

1. Terraform Configuration

main.tf defines the Terraform configuration and the resources managed by Terraform.

The .terraform.lock.hcl file records selected provider versions and checksums to help ensure consistent provider installations.

2. Kubernetes Deployment

deployment.yaml defines the Nginx application deployment.

The deployment manages the desired number of replicas and helps Kubernetes maintain the requested application state.

3. Kubernetes Service

service.yaml defines how the application is exposed within the Kubernetes cluster and how traffic is directed to the application pods.

4. Kubernetes Ingress

ingress.yaml defines rules for routing external HTTP traffic to the Kubernetes Service.

The Ingress requires a compatible Ingress controller, such as Traefik, to be installed and running in the cluster.
