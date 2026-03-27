provider "azurerm" {
  features {}

}

resource "azurerm_resource_group" "neel-rg" {

  name = "neelrg"

  location = "East US"

}

resource "azurerm_storage_account" "neelstorage3112" {

  name = "neelstorage3112"

  resource_group_name = azurerm_resource_group.neel-rg.name

  location = azurerm_resource_group.neel-rg.location

  account_tier = "Standard"

  account_replication_type = "LRS"

  depends_on = [azurerm_resource_group.neel-rg]

}


