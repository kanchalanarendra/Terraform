variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and Key Vault"
  type        = string
}
variable "appserviceplan" {
  description = "The name of the appserviceplan"
  type        = string
}
variable "funappsku" {
  description = "The sku of the app service plan"
  type        = string
}