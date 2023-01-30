resource "azurerm_mssql_server" "acceleris_server" {
  name                         = "${var.project_name}${var.environment}sql9123"
  resource_group_name          = azurerm_resource_group.resource_group.name
  location                     = var.location
  version                      = "12.0"
  administrator_login          = data.aws_ssm_parameter.sql_username.value
  administrator_login_password = data.aws_ssm_parameter.sql_password.value
}

resource "azurerm_mssql_database" "acceleris_db" {
  name           = "${var.project_name}${var.environment}db"
  server_id      = azurerm_mssql_server.acceleris_server.id
  max_size_gb    = 4
  zone_redundant = true

}