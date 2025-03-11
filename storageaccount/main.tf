resource "azurerm_storage_account" "storageaccount" {
  name                     = var.storageaccountname
  resource_group_name       = var.resourcegroupname
  location                 = var.location
  account_tier              = "Standard"
  account_replication_type = var.sku

#   network_rules {
#     default_action = "Deny"  # Deny all traffic by default
#     virtual_network_subnet_ids = [var.subnet_id]
# }
}

