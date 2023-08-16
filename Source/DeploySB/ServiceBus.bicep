param location string = 'Canada central'
param namespaceName string
param sku string = 'Standard'

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2021-06-01-preview' = {
  name: namespaceName
  location: location
  sku: {
    name: sku
  }
  properties: {
    messagingSku: sku
  }
}
# az deployment group create --resource-group <resource-group-name> --template-file <path-to-bicep-file> --parameters namespaceName=<namespace-name>


