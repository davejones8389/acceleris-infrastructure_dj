terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    template = {
      source = "hashicorp/template"
    }
  }
  required_version = ">= 1.3.6"
}

provider "azurerm" {

  subscription_id = var.subscription_id
  client_id       = data.aws_ssm_parameter.azure_service_principal_id.value
  tenant_id       = var.tenant_id
  client_secret   = data.aws_ssm_parameter.azure_service_principal_secret.value
  features {}
}

provider “azurerm” {
feature {}
}

provider "aws" {
  region  = "eu-west-1"
  alias   = "secrets"
  assume_role {
    role_arn    = "arn:aws:iam::${var.account_id}:role/terraform_atlantis_access" #Account ID needs to be project specific where the secrets are being stored (AWS SSM)

    session_name = "CS"
  }
}

provider "random" {
}