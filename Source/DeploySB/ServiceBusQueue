param namespaceName string
param queueName string

param maxDeliveryCount int = 10

resource serviceBusQueue 'Microsoft.ServiceBus/namespaces/queues@2021-06-01-preview' = {
  name: '${namespaceName}/${queueName}'
  properties: {
    lockDuration: 'PT1M' // 1 minute
    enablePartitioning: enablePartitioning
    defaultMessageTimeToLive: defaultMessageTtl
    maxDeliveryCount: maxDeliveryCount
  }
}
