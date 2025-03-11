
# Create an Azure App Service (Web App) for Python Application
resource "azurerm_app_service" "appservice" {
  name                = var.appservicename
  location            = var.location
  resource_group_name = var.resourcegroupname
  app_service_plan_id = var.appserviceplanid

  # App settings (environment variables, etc.)
  app_settings = {
    "SOME_KEY" = "some_value"
  }

  # Specify the Python stack version (e.g., Python 3.8)
  site_config {
    python_version = "3.4"  # You can adjust this as needed
  }
}