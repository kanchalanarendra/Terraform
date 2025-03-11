module "resourcegroup" {
  source = "./resourcegrp"
  resourcegroupname     = var.resourcegroupname
  location              = var.location
}

module "storageaccount" {
  source = "./storageaccount"
  storageaccountname    = var.storageaccountname
  resourcegroupname     = module.resourcegroup.resourcegroupname
  location              = module.resourcegroup.location
  sku                   = var.sku
  subnet_id             = module.virtualnetwork.subnet-id
}
module "Keyvault" {
  source = "./keyvault"
  keyvaultname      = var.keyvaultname
  resourcegroupname = module.resourcegroup.resourcegroupname
  location          = module.resourcegroup.location
  sku               = var.keyvaultsku
  tenant_id         = var.tenant_id
}

module "Translator" {
  source                   = "./translateservice"
  cognitiveservicename     = var.cognitiveservicename
  resourcegroupname        = module.resourcegroup.resourcegroupname
  location                 = module.resourcegroup.location
  sku                      = var.cognitivesku
  translatorkind           = var.translatorkind
}

# module "apimanagement" {
#   source                   = "./api management"
#   apimname                 = var.apimname
#   location                 = module.resourcegroup.location
#   resourcegroupname        = module.resourcegroup.resourcegroupname
#   publisher_name           = var.publisher_name
#   publisher_email          = var.publisher_email
#   #sku                      = var.apisku
# }

module "appserviceplan" {
  source                   = "./appserviceplan"
  appserviceplan           = var.appserviceplan
  resourcegroupname        = module.resourcegroup.resourcegroupname
  location                 = module.resourcegroup.location
  funappsku                = var.funappsku
}

module "CDN" {
  source                   = "./CDN"
  cdnprofilename           = var.cdnprofilename
  location                 = module.resourcegroup.location
  resourcegroupname        = module.resourcegroup.resourcegroupname
  cdnsku                   = var.cdnsku
  cdnendpointname          = var.cdnendpointname
  profilename              = var.profilename
  hostname                 = var.hostname
  originname               = var.originname
}

module "functionapp" {
  source                   = "./functionapp"
  functionappname          = var.functionappname
  location                 = module.resourcegroup.location
  resourcegroupname        = module.resourcegroup.resourcegroupname
  appserviceplanid         = module.appserviceplan.appserviceplanid
  storageaccountname       = module.storageaccount.storageaccountname
  storageaccesskey         = module.storageaccount.primary_access_key

}

module "virtualnetwork" {
  source = "./vnet"
  vnetname = var.vnetname
  resourcegroupname = module.resourcegroup.resourcegroupname
  location = module.resourcegroup.location
  address-space = var.address-space
  subnetname = var.subnetname
}

module "cosmosdb" {
  source = "./cosmosdb"
  location = var.location
  resourcegroupname = module.resourcegroup.resourcegroupname
  cosmosdb_name = var.cosmosdb_name
  database_name = var.database_name
  container_name = var.container_name
  #partitionKey = var.partitionKey
}

module "private-endpoint" {
  source = "./privateenpoint"
  resourcegroupname = var.resourcegroupname
  location = var.location
  subnet_id = module.virtualnetwork.subnet-id
  priavte-endpoint-name = var.privateendpointname
  privateconnection-id = module.storageaccount.storage_id
  storage-private-connection = var.storageprivateconnection
}

module "communicationservice" {
  source = "./communicationservice"
  communicationservicename = var.communicationservicename
  resourcegroupname = var.resourcegroupname
  location = var.location
}

module "appservice" {
  source = "./appservice"
  appservicename = var.appservicename
  resourcegroupname = var.resourcegroupname
  location = var.location
  appserviceplanid = module.appserviceplan.appserviceplanid
}

module "servicebus" {
  source = "./servicebus"
  servicebusnamespace = var.servicebusnamespace
  resourcegroupname = var.resourcegroupname
  location = var.location
  servicequeuename = var.servicequeuename
}

module "eventgrid" {
  source = "./eventgrid"
  eventgridname = var.eventgridname
  resourcegroupname = var.resourcegroupname
  location = var.location
  eventgrid-sub-name = var.eventgrid-sub-name
  function-url = var.function-url
}