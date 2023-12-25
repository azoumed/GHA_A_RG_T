terraform {
  required_providers {
    azurerm = {
        source  = "hashicorp/azurerm"
        version = "=3.0.0"
    }
  }
  backend "azurerm" {
    subscription_id      = "978a5fb8-d74f-4979-aaa3-f1106b5d95fc"
    resource_group_name  = "rgazouzdev"
    storage_account_name = "saazouzdev"
    container_name       = "tfstatesa"
    key                  = "terraform.tfstate.rg"
  }
}
provider "azurerm" {
  features {}
}
