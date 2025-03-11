
# Create a Service Bus namespace
resource "azurerm_servicebus_namespace" "service-namespace" {
  name                = var.servicebusnamespace
  location            = var.location
  resource_group_name = var.resourcegroupname
  sku                 = "Standard"

}

# Create a Service Bus queue
resource "azurerm_servicebus_queue" "service-queue" {
  name         = var.servicequeuename
  namespace_id = azurerm_servicebus_namespace.service-namespace.id

 # enable_partitioning = true
}
