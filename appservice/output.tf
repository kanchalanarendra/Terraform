# Outputs for app service name and URL
output "appservicename" {
  value = azurerm_app_service.appservice.name
}

output "appserviceurl" {
  value = azurerm_app_service.appservice.default_site_hostname
}