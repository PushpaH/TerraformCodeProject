provider "azurerm" {
  subscription_id = "AZURE_SUBSCRIPTION_ID"
  features {}
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.48.0"
    }
  }
}




