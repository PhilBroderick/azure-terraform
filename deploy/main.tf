﻿provider "azurerm" {
  features {}
  version = "=2.20.0"
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