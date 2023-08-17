param namespaceName string
param queueName string
resource serviceBusQueue 'Microsoft.ServiceBus/namespaces/queues@2021-06-01-preview' = {
  name: '${namespaceName}/${topicName}'
}
