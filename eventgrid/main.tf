# Create an Event Grid Topic
resource "azurerm_eventgrid_topic" "eventgrid" {
  name                = var.eventgridname
  location            = var.location
  resource_group_name = var.resourcegroupname
}

# Create an Event Grid Subscription (e.g., to a Webhook or Azure Function)
resource "azurerm_eventgrid_event_subscription" "event-subscription" {
  name  = var.eventgrid-sub-name
  scope = azurerm_eventgrid_topic.eventgrid.id

  webhook_endpoint {
    url = var.function-url # Replace with your Webhook or Azure Function URL
  }
}
