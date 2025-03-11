# Create App Service Plan
resource "azurerm_app_service_plan" "appservice-plan" {
  name                = var.appserviceplan
  location            = var.location
  resource_group_name = var.resourcegroupname
  kind                = "FunctionApp"
  sku {
    tier = "Standard"
    size = var.funappsku
  }
}