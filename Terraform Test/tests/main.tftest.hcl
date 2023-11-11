variables {
  resourceprefix = "demo"
  accname = "myaccname1"
  tier  = "Standard"
}

run "TC01_verify_users" {
  command = plan

  assert { 
    condition     = azurerm_resource_group.az-rg.name == "demo-test"
    error_message = "Incorrect resource group name"
  }
}

run "TC_02_verify_storage_acc" {
  command = plan

  assert { 
    condition     = startswith(azurerm_storage_account.az-sacc.name,"myacc")
    error_message = "Incorrect storage name"
  }
}

run "TC_02_verify_storage_acc_tier" {
  command = plan

  assert { 
    condition     = azurerm_storage_account.az-sacc.account_tier == "Standard"
    error_message = "Incorrect storage tier"
  }
}