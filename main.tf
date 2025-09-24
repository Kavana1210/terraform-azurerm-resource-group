terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "5b3707b0-d5ff-40ce-8046-9a652b2009ce"
}

module "rg" {
  source  = "Kavana1210/resource-group/azurerm"
  version = "1.0.0"

  resource_group_name = "demo-rg"
  location            = "eastus"
  tags = {
    owner = "kavana"
    env   = "lab"
  }
}