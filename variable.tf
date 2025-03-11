variable "resourcegroupname" {
  type = string
  description = "name of the resource group"
}
variable "location" {
    type = string
    description = "location of the resource group"
}
variable "storageaccountname" {
  type = string
  description = "name of the storageaccount"
}
variable "sku" {
  type = string
  description = "sku of the storage account"
}
variable "keyvaultname" {
  type = string
  description = "name of the keyvault service"
}
variable "keyvaultsku" {
  type = string
  description = "sku of the keyvault service"
}
variable "cognitiveservicename" {
  type = string
  description = "name of the cognitiveservicename"
}
variable "cognitivesku" {
  type = string
  description = "sku of the cognitive service"
}
variable "apimname" {
  type = string
  description = "name of the api management service"
}
variable "publisher_email" {
  type = string
  description = "value of the publisher email"
}
variable "publisher_name" {
  type = string
  description = "value of the publisher name"
}
# variable "apisku" {
#   type = string
#   description = "sku of the api management"
# }
variable "appserviceplan" {
  type = string
  description = "name of the app service plan"
}
variable "funappsku" {
  type = string
  description = "value of the function app sku"
}
variable "cdnprofilename" {
  type = string
  description = "value of the cdn profile"
}
variable "cdnsku" {
  type = string
  description = "sku of the CDN"
}
variable "cdnendpointname" {
  type = string
  description = "value of the cdn endpoint"
}
variable "profilename" {
  type = string
  description = "value of the profilename"
}
variable "hostname" {
  type = string
  description = "value of the hostname"
}
variable "originname" {
  type = string
  description = "value of the origin name"
}
variable "functionappname" {
  type = string
  description = "name of the fucntion app"
}
variable "tenant_id" {
  type = string
  description = "Value of the tenant"
}
variable "translatorkind" {
  type = string
  description = "value of the translator kind"
}
variable "subscription_id" {
  type = string
  description = "value of the subscription ID"
}
variable "client_id" {
  type = string
  description = "value of the cleint ID"
}
variable "client_secret" {
  type = string
  description = "value of the client secret"
}
variable "vnetname" {
  type = string
  description = "name of the virtual network"
}
variable "address-space" {
  type = list(string)
  description = "address space for the vnet"
}
variable "subnetname" {
  type = string
}
# variable "partitionKey" {
#   type = string
# }
variable "cosmosdb_name" {
  type = string
}
variable "database_name" {
  type = string
}
variable "container_name" {
  type = string
}

variable "privateendpointname" {
  type = string
}
variable "storageprivateconnection" {
  type = string
}
variable "communicationservicename" {
  type = string
}
variable "appservicename" {
  type = string
}
variable "servicebusnamespace" {
 type =  string
}
variable "servicequeuename" {
  type = string
}
variable "eventgridname" {
  type = string
}
variable "eventgrid-sub-name" {
  type = string
}
variable "function-url" {
  type = string
}