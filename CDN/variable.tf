variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and CDN"
  type        = string
}

variable "cdnprofilename" {
  description = "The name of the CDN profile"
  type        = string
}

variable "cdnendpointname" {
  description = "The name of the CDN endpoint"
  type        = string
}

variable "cdnsku" {
  description = "The SKU for the CDN profile"
  type        = string
  #default     = "Standard_Verizon"  # Options: Standard_Verizon, Standard_Akamai, Premium_Akamai
}
variable "profilename" {
  description = "The name of the profilename"
  type        = string
}
variable "originname" {
  description = "The name of the originname"
  type        = string
}
variable "hostname" {
  description = "The name of the hostname"
  type        = string
}