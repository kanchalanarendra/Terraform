variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and Key Vault"
  type        = string
}

variable "keyvaultname" {
  description = "The name of the Key Vault"
  type        = string
}

variable "sku" {
  description = "The SKU for the Key Vault"
  type        = string
}
variable "tenant_id" {
  type = string
  description = "Value of the tenant id"
}