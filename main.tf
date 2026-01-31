
terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.57.0"
    }
  }

   backend "azurerm" {
    resource_group_name  = "rg_sonil1"
    storage_account_name = "stgsonil1"
    container_name       = "sonil1container"
    key                  = "prod.terraform.tfstate"
  }
}


provider "azurerm" {
  features {}

  subscription_id = "0e01e4d0-ef71-4105-81fd-346e52ee7351"
}

resource "azurerm_resource_group" "sonil" {
  name     = "rg_sonil"
  location = "West Europe"
}
