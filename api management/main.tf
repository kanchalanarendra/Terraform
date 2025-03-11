resource "azurerm_api_management" "example" {
  name                = var.apimname
  location            = var.location
  resource_group_name = var.resourcegroupname
  sku_name            = "Developer"
  publisher_name      = var.publisher_name
  publisher_email     = var.publisher_email

  virtual_network_type = "None"  # Use "None" for no VNET, or specify a VNET
  #enable_client_certificate = false  # Enable or disable client certificates
}