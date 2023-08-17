param topicName string 
param namespaceName string 

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2021-06-01-preview' = {
  name: namespaceName
}
resource serviceBusTopic 'Microsoft.ServiceBus/namespaces/topics@2021-06-01-preview' = {
  parent: serviceBusNamespace
  name: topicName
}
