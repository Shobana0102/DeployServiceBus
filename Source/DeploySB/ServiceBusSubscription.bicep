param namespaceName string
param topicName string
param subscriptionName string

resource serviceBusNamespace 'Microsoft.ServiceBus/namespaces@2021-06-01-preview' = {
  name: namespaceName
  sku: {
    name: 'Standard'
    tier: 'Standard'
  }
}

resource serviceBusTopic 'topics@2021-06-01-preview' = {
  name: topicName
  parent: serviceBusNamespace
}

resource serviceBusSubscription 'subscriptions@2021-06-01-preview' = {
  name: subscriptionName
  parent: serviceBusTopic
  properties: {
    defaultMessageTimeToLive: 'PT1H'
  }
}
