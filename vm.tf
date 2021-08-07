resource "azurerm_linux_virtual_machine" "myVM" {
  name                = "terraform-vm"
  location            = "eastus"
  resource_group_name = azurerm_resource_group.terraformresource.name
  size                = "Standard_DS1_v2"
  os_disk {
    name                 = "terraform_VM_disk"
    caching              = "ReadWrite"
    storage_account_type = "Premium_LRS"
  }
  admin_username        = "azureuser"
  network_interface_ids = [azurerm_network_interface.yohana-nic.id]

  tags = {
    environment = "Terraform Demo"
  }
}