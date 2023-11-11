resource "azurerm_resource_group" "az-rg" {
  name     = "${var.resourceprefix}-test"
  location = "West Europe"
}

resource "azurerm_storage_account" "az-sacc" {
  name                     = var.accname
  resource_group_name      = azurerm_resource_group.az-rg.name
  location                 = azurerm_resource_group.az-rg.location
  account_tier             = var.tier
  account_replication_type = "GRS"
}


