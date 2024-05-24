@description('The name of the managed cluster resource.')
param clusterName string = 'myAKSAutomaticCluster'

@description('The location of the managed cluster resource.')
param location string = resourceGroup().location

resource aks 'Microsoft.ContainerService/managedClusters@2024-03-02-preview' = {
  name: clusterName
  location: location  
  sku: {
		name: 'Automatic'
  		tier: 'Standard'
  }
  properties: {
    agentPoolProfiles: [
      {
        name: 'systempool'
        count: 3
        vmSize: 'Standard_DS4_v2'
        osType: 'Linux'
        mode: 'System'
      }
    ]
  }
  identity: {
    type: 'SystemAssigned'
  }
}
