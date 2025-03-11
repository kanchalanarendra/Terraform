
# Create a Communication Services Resource (ACS)
resource "azurerm_communication_service" "comminicationservice" {
  name                = var.communicationservicename
  resource_group_name = var.resourcegroupname
}
