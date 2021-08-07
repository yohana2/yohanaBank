resource "azurerm_resource_group" "terraformresource" {
  name     = "terraform_resource_group"
  location = "eastus"
  tags = {
    Name        = "terraform Resource Group"
    environment = "terraform demo"
  }
}



resource "azurerm_network_interface" "yohana-nic" {
  name                = "yohana-nic"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.terraformresource.name
  ip_configuration {
    name = "yohana-nic-ip"
    private_ip_address_allocation = "Dynamic"
  }
}