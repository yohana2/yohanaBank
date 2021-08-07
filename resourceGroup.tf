resource "azurerm_resource_group" "terraformresource" {
    name = "terraform_resource_group"
    location = "eastus"
    tags = {
        Name = "terraform Resource Group"
        environment  = "terraform demo"
    }
}