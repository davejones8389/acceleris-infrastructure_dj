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