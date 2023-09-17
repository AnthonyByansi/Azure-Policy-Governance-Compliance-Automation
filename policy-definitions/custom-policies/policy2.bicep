// Custom Azure Policy 1 - Example
param allowedResourceTypes array = [
  'Microsoft.Storage/storageAccounts'
]

param effect string = 'deny'

resource customPolicy 'Microsoft.Authorization/policyDefinitions@2020-09-01' = {
  name: 'customPolicy1'
  properties: {
    displayName: 'Restrict Unapproved Resource Types'
    description: 'This policy restricts the creation of unapproved resource types.'
    policyRule: {
      if: {
        not: {
          allOf: [
            for resourceType in allowedResourceTypes: {
              field: 'type'
              equals: resourceType
            }
          ]
        }
      }
      then: {
        effect: effect
      }
    }
    metadata: {
      category: 'Custom'
      createdBy: 'Your Name'
    }
  }
}
