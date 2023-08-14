module "region" {
  source = "github.com/rmsmatos/terraform_azurerm_regions_version1"
  #checkov:skip=CKV_TF_1:We don't need to be paranoic for this module
  azure_region = var.location
}

resource "azurerm_resource_group" "resourcegroup" {
  #name       = lower("rg-${var.name}")
  name       = lower(var.appendEnvironmentShortname ? "rg-${var.name}-${var.environmentShortname}" : "rg-${var.name}")
  location   = module.region.location_cli
  managed_by = var.managed_by
  tags       = var.tags
}
