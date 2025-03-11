# Output the Event Grid Topic endpoint
output "eventgrid_topic_endpoint" {
  value = azurerm_eventgrid_topic.eventgrid.endpoint
}

# Output the Event Grid Topic access key
output "eventgrid_topic_primary_access_key" {
  value     = azurerm_eventgrid_topic.eventgrid.primary_access_key
  sensitive = true
}