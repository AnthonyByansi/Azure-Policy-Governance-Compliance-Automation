# Azure Management Groups Configuration

# Provider Configuration
provider "azurerm" {
  features {}
}

# Define the Azure Management Groups
resource "azurerm_management_group" "example" {
  name        = "YourManagementGroup"
  display_name = "Your Management Group Display Name"
  parent_id   = null # Set the parent management group if needed, otherwise, use 'null'

  tags = {
    environment = "Production"
    owner       = "Your Name"
  }
}

# Define Additional Management Groups if Needed
# resource "azurerm_management_group" "example2" {
#   name        = "AnotherManagementGroup"
#   display_name = "Another Management Group Display Name"
#   parent_id   = azurerm_management_group.example.id

#   tags = {
#     environment = "Development"
#     owner       = "Another Owner"
#   }
# }

# Output the Management Group ID
output "management_group_id" {
  value = azurerm_management_group.example.id
}
