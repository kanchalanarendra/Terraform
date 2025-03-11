output "storageaccountname" {
  value = azurerm_storage_account.storageaccount.name
}
output "primary_access_key" {
  value = azurerm_storage_account.storageaccount.primary_access_key
}

output "secondary_access_key" {
  value = azurerm_storage_account.storageaccount.secondary_access_key
}
output "storage_id" {
  value = azurerm_storage_account.storageaccount.id
}