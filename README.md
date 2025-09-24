# terraform-azurerm-resource-group
Terraform module to create Azure Resource Groups

# Azure Resource Group Terraform Module

This module creates an Azure Resource Group.

## Usage

```hcl
module "rg" {
  source  = "github.com/<your-username>/terraform-azurerm-resource-group"
  resource_group_name = "my-rg"
  location            = "eastus"
  tags = {
    environment = "dev"
  }
}