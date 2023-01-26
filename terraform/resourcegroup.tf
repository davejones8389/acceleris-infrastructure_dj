resource "azurerm_resource_group" "resource_group" {
  name     = "${var.project_name}-${var.environment}-rg"
  location = var.location
}