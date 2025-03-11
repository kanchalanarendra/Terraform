resource "azurerm_private_endpoint" "storage_endpoint" {
  name                      = var.priavte-endpoint-name
  location                  = var.location
  resource_group_name       = var.resourcegroupname
  subnet_id                 = var.subnet_id  # Reference to your subnet

  private_service_connection {
    name                           = var.storage-private-connection
    is_manual_connection = false
    private_connection_resource_id = var.privateconnection-id  # Reference to your storage account
    subresource_names              = ["blob"]  # Specify which service you are connecting to, e.g., "blob" for Blob Storage
  }
}
