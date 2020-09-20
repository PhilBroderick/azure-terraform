terraform {
  backend "remote" {
    organization = "phil-dev"

    workspaces {
      name = "gh-actions-ws"
    }
  }
}

provider "azurerm" {
  features {}
  version = "=2.20.0"
  subscription_id = var.sub
  client_id = var.client_id
  client_secret = var.client_secret
  tenant_id = var.tenant_id
}

resource "azurerm_resource_group" "rg" {
  name      = var.rgName
  location  = var.location
}

resource "azurerm_storage_account" "storage" {
  name                      = var.storageAccountName
  resource_group_name       = azurerm_resource_group.rg.name
  location                  = azurerm_resource_group.rg.location
  account_tier              = "Standard"
  account_replication_type  = "LRS"
}