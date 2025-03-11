resource "azurerm_cognitive_account" "Translator" {
  name                = var.cognitiveservicename
  resource_group_name = var.resourcegroupname
  location            = var.location
  kind                = var.translatorkind  # This specifies that it's the Translator service
  sku_name                 = var.sku
}