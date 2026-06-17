 terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.65.0"
    }
  }
}


provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "49784558-110c-4c4c-a22a-1969f5a4f1b7"  
}


module "rg" {
  source = "./modules/resource_group"
  name = var.rg_name
  location =var.rg_location
}