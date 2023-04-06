terraform {
    backend "azurerm" {
    resource_group_name  = "TF-rg"
    storage_account_name = "demotfstorage001"
    container_name       = "demo"
    key                  = "demo01.tfstate"
  }
}