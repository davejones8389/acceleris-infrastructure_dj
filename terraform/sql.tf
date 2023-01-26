resource "azurerm_mssql_server" "acceleris_server" {
  name                         = "${var.project_name}${var.environment}sql"
  resource_group_name          = azurerm_resource_group.resource_group.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = "admin"
  administrator_login_password = "v3rYSecUr3P$%%w0rd"
}


resource "azurerm_mssql_database" "acceleris_db" {
  name           = "${var.project_name}${var.environment}db"
  server_id      = azurerm_mssql_server.acceleris_server.id
  #collation      = "SQL_Latin1_General_CP1_CI_AS"
  #license_type   = "LicenseIncluded"
  max_size_gb    = 4
  #read_scale     = true
  #sku_name       = "S2"
  zone_redundant = true

}




# resource "azurerm_sql_server" "acceleris_server" {
#   name                         = "${var.project_name}${var.environment}sql"
#   resource_group_name          = azurerm_resource_group.resource_group.name
#   location                     = var.location
#   version                      = "12.0"
#   administrator_login          = "mradministrator"
#   administrator_login_password = "thisIsDog11"

#   tags = {
#     environment = var.environment
#   }
# }

# resource "azurerm_sql_database" "acceleris_db" {
#   name                = "${var.project_name}${var.environment}db"
#   resource_group_name = azurerm_resource_group.resource_group.name
#   location            = var.location
#   server_name         = azurerm_sql_server.acceleris_server.name

#   extended_auditing_policy {
#     storage_endpoint                        = azurerm_storage_account.example.primary_blob_endpoint
#     storage_account_access_key              = azurerm_storage_account.example.primary_access_key
#     storage_account_access_key_is_secondary = true
#     retention_in_days                       = 6
#   }

#   tags = {
#     environment = var.environment
#   }
# }