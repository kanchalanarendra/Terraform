# Create Function App
resource "azurerm_function_app" "functionapp" {
  name                      = var.functionappname
  location                  = var.location
  resource_group_name       = var.resourcegroupname
  app_service_plan_id       = var.appserviceplanid
  storage_account_name     = var.storageaccountname
  storage_account_access_key = var.storageaccesskey
  os_type                   = "linux"  # Can also be "Windows"
  

  app_settings = {
    "FUNCTIONS_WORKER_RUNTIME" = "python"  # You can use other runtimes like "node" or "python"
    
  }
}