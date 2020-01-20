#Create a App Service Plan

resource "azurerm_app_service_plan" "example" {
  name                = "example-appserviceplan"
  location            = "eastUS"
  resource_group_name = azurerm_resource_group.javaWebApp.name

  sku {
    tier = "Standard"
    size = "S1"
  }
}
