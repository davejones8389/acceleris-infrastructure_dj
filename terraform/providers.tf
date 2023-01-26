terraform {
  backend "local" {
  #  resource_group_name  = "terraform"
  #  storage_account_name = "amalfitfstate"
  #  container_name       = "tfstate"
  #  key                  = "amalifi.terraform.tfstate"
  }

  required_version = "1.1.7"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "2.99.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
  tenant_id       = var.tenant_id
  subscription_id = var.subscription_id

  features {
    key_vault {
      purge_soft_delete_on_destroy = true
    }
  }
}
