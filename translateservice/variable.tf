variable "resourcegroupname" {
  description = "The name of the Azure resource group"
  type        = string
}

variable "location" {
  description = "The location for the resource group and Cognitive Service"
  type        = string
}

variable "cognitiveservicename" {
  description = "The name of the Cognitive Service resource"
  type        = string
}

variable "sku" {
  description = "The SKU for the Cognitive Service (Translator)"
  type        = string
}
variable "translatorkind" {
  type = string
  description = "the value of the kind for this translator"
}