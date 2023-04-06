resource "azurerm_resource_group" "demo-cae-rg" {
  name     = "container-app-rg"
  location = "West Europe"
}

resource "azurerm_log_analytics_workspace" "demo-cae-logs" {
  name                = "democaelogs"
  location            = azurerm_resource_group.demo-cae-rg.location
  resource_group_name = azurerm_resource_group.demo-cae-rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

resource "azurerm_virtual_network" "demo-cae-vnet" {
  name                = "demo-cae-network"
  location            = azurerm_resource_group.demo-cae-rg.location
  resource_group_name = azurerm_resource_group.demo-cae-rg.name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "demo-cae-subnet" {
  name                 = "demo-cae-snet"
  resource_group_name  = azurerm_resource_group.demo-cae-rg.name
  virtual_network_name = azurerm_virtual_network.demo-cae-vnet.name
  address_prefixes     = ["10.0.0.0/23"]
}

resource "azurerm_container_app_environment" "demo-cae" {
  name                           = "container-app-env"
  location                       = azurerm_resource_group.demo-cae-rg.location
  resource_group_name            = azurerm_resource_group.demo-cae-rg.name
  log_analytics_workspace_id     = azurerm_log_analytics_workspace.demo-cae-logs.id
  internal_load_balancer_enabled = true
  infrastructure_subnet_id       = azurerm_subnet.demo-cae-subnet.id
}
