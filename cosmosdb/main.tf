# Cosmos DB Account
resource "azurerm_cosmosdb_account" "cosmosdb" {
  name                      = var.cosmosdb_name
  location                  = var.location
  resource_group_name       = var.resourcegroupname
  offer_type                = "Standard"
  kind                      = "GlobalDocumentDB"
 # enable_free_tier          = true

  consistency_policy {
    consistency_level = "Session"
  }

  geo_location {
    location          = var.location
    failover_priority = 0
  }
}

# Cosmos DB SQL Database
resource "azurerm_cosmosdb_sql_database" "database" {
  name                = var.database_name
  resource_group_name = var.resourcegroupname
  account_name        = azurerm_cosmosdb_account.cosmosdb.name
}

# Cosmos DB SQL Container
resource "azurerm_cosmosdb_sql_container" "container" {
  name                  = var.container_name
  resource_group_name   = var.resourcegroupname
  account_name          = azurerm_cosmosdb_account.cosmosdb.name
  database_name         = azurerm_cosmosdb_sql_database.database.name
  partition_key_paths    = ["/user_id"]
  partition_key_version = 1

  indexing_policy {
    indexing_mode = "consistent"
  }
}