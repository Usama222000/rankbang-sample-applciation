#!/bin/bash

# set -e
# export PATH=$PATH:/usr/local/bin

# Variables
CHART_NAME="rankbang"
VALUES_FILE="values.yaml"
PATH="./rank_bang_chart"
CLUSTER_NAME="rankbang-default-Cluster"
REGION="us-east-1"
PROFILE="nomi"

aws eks update-kubeconfig --name $CLUSTER_NAME --region $REGION --profile $PROFILE
# Deploy the Helm chart in the default namespace
/usr/local/bin/helm upgrade --install $CHART_NAME $PATH --values $VALUES_FILE

echo "Deployment completed successfully."
