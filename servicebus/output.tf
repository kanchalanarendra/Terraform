output "servicebus_namespace_name" {
  value = azurerm_servicebus_namespace.service-namespace.name
}

output "servicebus_queue_name" {
  value = azurerm_servicebus_queue.service-queue.name
}