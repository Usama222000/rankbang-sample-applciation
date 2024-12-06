# Rankbank Helm Chart

This Helm chart deploys an application consisting of **one microservice of java application**: **rankbank**, .  microservice has its own Deployment, Service, 

## Table of Contents

- [Introduction](#introduction)
- [Microservices Overview](#microservices-overview)
  - [rankbang Service](#frontend-service)


---

## Introduction

This Helm chart facilitates deploying the **java sHello App** on a Kubernetes cluster. The app  microservices: **rankbank** for modular and scalable deployment.

### Key Features

- Deployment and Service for each microservice.
- Helm values file for easy customization.

---

## Microservices Overview

### rankbank Service

- **Purpose**: Provides the user interface for the application.
- **Components**:
  - `rankbang-deployment.yaml`: Deployment manifest for the frontend.
  - `rankbang-service.yaml`: Service manifest for frontend accessibility.
  - `ingress.yaml` : manifest for ingress deployment


## Prerequisites

- Kubernetes cluster (v1.20 or later).
- Helm (v3.5 or later).
- Configured `kubectl` access to the Kubernetes cluster.

---

## Installation

1. Connect with your cluster 

   ```bash
   aws eks update-kubeconfig --name `Cluster name` --region `region name`

2. install helm chart 

   ```bash
   helm upgrade -i emumba-app ./path/to/your/chart
