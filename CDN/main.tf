resource "azurerm_cdn_profile" "CDN" {
  name                = var.cdnprofilename
  location            = var.location
  resource_group_name = var.resourcegroupname
  sku                 = var.cdnsku
}

resource "azurerm_cdn_endpoint" "endpoint" {
  name                     = var.cdnendpointname
  resource_group_name      = var.resourcegroupname
  location                 = var.location
  profile_name             = var.profilename
  is_http_allowed          = true
  is_https_allowed         = true
  origin {
    name      = var.originname
    host_name = var.hostname  # You would use your actual origin domain or IP address
  }
}