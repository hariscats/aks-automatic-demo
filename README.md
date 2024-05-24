# AKS Automatic Demo

This repository will build on the official documenttion to demonstrate the deployment and management of an AKS Automatic cluster with a sample app. The setup includes advanced configurations for monitoring and security, showcasing best practices for a production-ready Kubernetes environment. The objective is to assess the pre-configured options to determine the applications that are most appropriate for it. 

## Prerequisites

Before you begin, ensure you have the following installed and configured:

- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli) (version 2.57.0 or later)
- [kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/)
- [Helm](https://helm.sh/docs/intro/install/)
- [Bicep CLI](https://docs.microsoft.com/en-us/azure/azure-resource-manager/bicep/install)

## Setup

### Step 1: Create the Resource Group and AKS Cluster

1. **Register required features**:
    ```bash
    az feature register --namespace Microsoft.ContainerService --name EnableAPIServerVnetIntegrationPreview
    az feature register --namespace Microsoft.ContainerService --name NRGLockdownPreview
    az feature register --namespace Microsoft.ContainerService --name SafeguardsPreview
    az feature register --namespace Microsoft.ContainerService --name NodeAutoProvisioningPreview
    az feature register --namespace Microsoft.ContainerService --name DisableSSHPreview
    az feature register --namespace Microsoft.ContainerService --name AutomaticSKUPreview
    az provider register --namespace Microsoft.ContainerService
    ```

2. **Run the Bicep file to create resources**:
    ```bash
    az group create --name myResourceGroup --location eastus
    az deployment group create --resource-group myResourceGroup --template-file ./infrastructure/main.bicep
    ```

### Step 2: Deploy the Application

1. **Get AKS Cluster credentials**:
    ```bash
    az aks get-credentials --resource-group myResourceGroup --name myAKSAutomaticCluster
    ```

2. **Create the namespace**:
    ```bash
    kubectl create namespace aks-store-demo
    ```

3. **Deploy the sample application using Helm**:
    ```bash
    helm repo add stable https://charts.helm.sh/stable
    helm install aks-store-demo stable/wordpress --namespace aks-store-demo
    ```

### Step 3: Access the Application

1. **Retrieve the external IP address**:
    ```bash
    kubectl get svc --namespace aks-store-demo
    ```

2. **Open the application**:
   - Open a web browser and navigate to the external IP address of the service.