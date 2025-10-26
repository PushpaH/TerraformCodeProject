# TerraformCodeProject

## Container App Environment

### This project consist with following configurations

- <b>main.tf</b> - configurations to create a resource group, log analitics workspace,virtual network,subnet and container app environment
- <b>provider.tf</b> - azure provider information
- <b>state.tf</b> - information about remote state file

## Terraform Test

### This project consist with following configurations

- <b>main.tf</b> - configurations to create a resource group and a storage account
- <b>provider.tf</b> - azure provider information
- <b>variable.tf</b> - variables use in configurations in main.tf
- <b>tests</b> folder created in the same level as other configuration files
- <b>main.tftest.hcl</b> - test case file

### How to run

Run following commands inside Terraform Tests folder to initialize the working folder and run tests

- <b>Terraform init</b></br>
- <b>Terraform test</b>

just test
