#!/bin/bash

# Variables
NAMESPACE="aks-store-demo"

# Create a namespace
echo "Creating namespace..."
kubectl create namespace $NAMESPACE

# Deploy a sample application using Helm
echo "Deploying sample application using Helm..."
helm repo add stable https://charts.helm.sh/stable
helm install aks-store-demo stable/wordpress --namespace $NAMESPACE

# Check if the application has been deployed successfully
echo "Checking deployment status..."
kubectl get svc --namespace $NAMESPACE

echo "Sample application deployed!"
