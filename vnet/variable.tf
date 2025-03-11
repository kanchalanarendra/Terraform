variable "vnetname" {
  type = string
}

variable "location" {
  type = string
}

variable "resourcegroupname" {
  type = string
}

variable "address-space" {
  type = list(string)
}

variable "subnetname" {
  type = string
}
