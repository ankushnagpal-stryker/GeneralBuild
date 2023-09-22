terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.73.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = var.subscription

}

# create resource group
data "azurerm_resource_group" "RG" {

    name = var.RG
    }



resource "azurerm_virtual_network" "Vnet" {
  name                = var.vnet.name
  location            = var.location
  resource_group_name = var.RG

  address_space       = ["${var.vnet.address_space}"]


  subnet {
    name           = var.vnet.subnet1_name
    address_prefix = var.vnet.subnet1_address
  }

  subnet {
   name           = var.vnet.subnet2_name
    address_prefix = var.vnet.subnet2_address
    
  }

  subnet {
   name           = var.vnet.subnet3_name
    address_prefix = var.vnet.subnet3_address
    
  }
    subnet {
   name           = var.vnet.subnet4_name
    address_prefix = var.vnet.subnet4_address
    
  }
   
    tags = {
      environment= var.tags_map.Environment
      department = var.tags_map.Department
    }

}