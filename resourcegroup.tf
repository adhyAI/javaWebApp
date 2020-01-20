# Configure the Azure Provider
provider "azurerm" {
  subscription_id = "e88c3aee-ce44-431e-bc7a-44d811acc9de"
  client_id       = "efe3d6cb-1da2-4812-a04f-cabcc804b77b"
  client_secret   = "8s527WTNQJSuxzkJee/RNljmiAzYR/[="
  tenant_id       = "72f988bf-86f1-41af-91ab-2d7cd011db47"
}

# Create a resource group
resource "azurerm_resource_group" "javaWebApp" {
  name     = "Dev"
  location = "eastUS"
}
