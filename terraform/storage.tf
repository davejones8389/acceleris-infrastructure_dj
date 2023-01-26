resource "azurerm_storage_account" "storage_account" {
  name                     = "${var.project_name}${var.environment}sa"
  resource_group_name      = azurerm_resource_group.resource_group.name
  location                 = var.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  network_rules {
    default_action         = "Deny"
  }
  blob_properties {
    delete_retention_policy {
      days = var.retention_in_days
    }
  }
}