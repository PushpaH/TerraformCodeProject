resource "azurerm_resource_group" "az-region01-rg" {
  name     = "${var.location01}-test"
  location = var.location01
}


resource "azurerm_resource_group" "az-region02-rg" {
  name     = "${var.location02}-test"
  location = var.location02
}
