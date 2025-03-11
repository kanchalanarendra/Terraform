variable "resourcegroupname" {
  description = "Resource Group name"
  type        = string
 
}

variable "location" {
  description = "Azure region"
  type        = string

}

variable "cosmosdb_name" {
  description = "CosmosDB Account Name"
  type        = string

}

variable "database_name" {
  description = "CosmosDB SQL Database Name"
  type        = string

}

variable "container_name" {
  description = "CosmosDB SQL Container Name"
  type        = string

}
# variable "partitionKey" {
#   type = string
# }