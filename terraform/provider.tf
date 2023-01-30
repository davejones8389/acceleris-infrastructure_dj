terraform {
  required_version = "=1.3.6"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>3.72.0"
    }
  }

  backend "s3" {
    bucket               = "djtest83"
    key                  = "terraform.tfstate"
    region               = "eu-west-1"
  }
}

data "aws_region" "current" {}


provider "azurerm" {
  features {}
}



provider "aws" {
  region  = "eu-west-1"
  alias   = "secrets"
  assume_role {
    role_arn    = "arn:aws:iam::${var.account_id}:role/terraform_atlantis_access" #Account ID needs to be project specific where the secrets are being stored (AWS SSM)

    session_name = "CS"
  }
}
