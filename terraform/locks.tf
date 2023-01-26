module "azure_locks" {
  source      = "git::https://github.com/KPMG-UK/terraform-az-locks.git?ref=tf0.14-1.0.1"
  sql_servers = [azurerm_mssql_server.acceleris_server.id]
}