resource "azurerm_key_vault" "keyvault" {
  name                = var.keyvaultname
  resource_group_name = var.resourcegroupname
  location            = var.location
  sku_name            = var.sku
  tenant_id           = var.tenant_id
  purge_protection_enabled = false
}