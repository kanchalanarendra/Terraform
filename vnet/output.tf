output "vnet-id" {
  value = azurerm_virtual_network.vnet.id
}
output "subnet-id" {
  value = azurerm_subnet.subnet.id
}