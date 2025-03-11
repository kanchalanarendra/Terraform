variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group"
  type        = string

}

variable "storageaccountname" {
  description = "The name of the storage account"
  type        = string
}

variable "sku" {
  description = "The SKU for the storage account"
  type        = string
}
variable "subnet_id" {
  type = string
}