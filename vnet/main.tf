resource "azurerm_virtual_network" "vnet" {
  name                = var.vnetname
  location            = var.location
  resource_group_name = var.resourcegroupname
  address_space       = var.address-space
}

resource "azurerm_subnet" "subnet" {
  name                 = var.subnetname
  resource_group_name  = var.resourcegroupname
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.0.0/24"]
}
