variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and API Management"
  type        = string
}

variable "apimname" {
  description = "The name of the API Management instance"
  type        = string
}

# variable "sku" {
#   description = "The SKU for the API Management"
#   type        = string
#   #default     = "Developer"  # Options: Developer, Basic, Standard, Premium
# }

variable "publisher_name" {
    description = "The name of the Publisher"
    type = string
}

variable "publisher_email" {
    description = "The mail ID of the publisher"
    type = string 
}