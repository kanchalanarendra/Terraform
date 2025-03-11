variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and Function App"
  type        = string
}

variable "functionappname" {
  description = "The name of the Azure Function App"
  type        = string
}
variable "appserviceplanid" {
  description = "The ID of appserviceplan "
  type        = string
}
variable "storageaccountname" {
  description = "The name of storageaccount "
  type        = string
}
variable "storageaccesskey" {
  description = "The access key of the storage account "
  type        = string
}