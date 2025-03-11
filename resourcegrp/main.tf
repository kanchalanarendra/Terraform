resource "azurerm_resource_group" "resourcegroup" {
  name     = var.resourcegroupname
  location = var.location
}