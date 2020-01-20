#create a MySql Server 
resource "azurerm_mysql_server" "example" {
  name                = "java-mysql-server"
  location            = "eastUS"
  resource_group_name = azurerm_resource_group.javaWebApp.name

  sku {
    name     = "B_Gen5_2"
    capacity = 2
    tier     = "Basic"
    family   = "Gen5"
  }

  storage_profile {
    storage_mb            = 5120
    backup_retention_days = 7
    geo_redundant_backup  = "Disabled"
  }

  administrator_login          = "mysqladminun"
  administrator_login_password = "H@Sh1CoR3!"
  version                      = "5.7"
  ssl_enforcement              = "Enabled"
}

#create a MySql database

resource "azurerm_mysql_database" "example" {
  name                = "java-mysql-db"
  resource_group_name = azurerm_resource_group.javaWebApp.name
  server_name         = azurerm_mysql_server.example.name
  charset             = "utf8"
  collation           = "utf8_unicode_ci"
}
