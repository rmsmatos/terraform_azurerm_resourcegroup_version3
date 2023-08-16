<img alt="Terraform" src="https://www.datocms-assets.com/2885/1629941242-logo-terraform-main.svg" width="200px">

# README

[![This is the link to Cloud][azure-badge]][azure] [![This is the CHANGELOG file][changelog-badge]][changelog] [![This is the NOTICE file][notice-badge]][notice] [![This is the LICENSE file][license-badge]][license]

# Overview

**Resource: azurerm_resourcegroup**

Creates an Azure resource group using recommended abbreviation for Azure Resources, given a name, location and tags (optional). Will use module terraform_azurerm_regions_version1 to ensure proper name consistency.  


<!-- BEGIN_TF_DOCS -->

#### Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | >= 2.98 |
#### Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | >= 2.98 |
#### Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_region"></a> [region](#module_region) | github.com/rmsmatos/terraform_azurerm_regions_version1 | n/a |
#### Resources

| Name | Type |
|------|------|
| [azurerm_resource_group.resourcegroup](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
#### Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_location"></a> [location](#input_location) | (Required) The Azure Region where the Resource Group should exist. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input_name) | (Required) The Name which should be used for this Resource Group. Changing this forces a new Resource Group to be created. | `string` | n/a | yes |
| <a name="input_environmentShortname"></a> [environmentShortname](#input_environmentShortname) | (Optional) If set, this string will  be appended to Resource Group Name. | `string` | `null` | no |
| <a name="input_managed_by"></a> [managed_by](#input_managed_by) | (Optional) The ID of the resource or application that manages this Resource Group. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input_tags) | (Optional) A mapping of tags which should be assigned to the Resource Group. | `map(string)` | `null` | no |
#### Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output_id) | Returns Resource Group ID. |
| <a name="output_location"></a> [location](#output_location) | Returns Resource Group Location. |
| <a name="output_managed_by"></a> [managed_by](#output_managed_by) | Returns the ID of the resource or application that manages this Resource Group. |
| <a name="output_name"></a> [name](#output_name) | Returns Resource Group Name. |
| <a name="output_tags"></a> [tags](#output_tags) | Returns Resource Group Tags. |

### Example
```hcl
module "azurerm_resourcegroup_version3" {
  source               = "github.com/rmsmatos/terraform_azurerm_resourcegroup_version3"
  name                 = "just-a-test"
  environmentShortname = "dev"
  location             = "westeurope"
  tags = {
    environment = "production"
    costcentre  = "cost center"
  }
}
```

<!-- END_TF_DOCS -->

### Limitations
### Known Issues
### Documentation

## Related documentation

* [Abbreviation examples for Azure resources](https://learn.microsoft.com/en-us/azure/cloud-adoption-framework/ready/azure-best-practices/resource-abbreviations)
* [Azure Resource naming restrictions](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/resource-name-rules)
* [Azure Resource Group](https://docs.microsoft.com/en-us/azure/azure-resource-manager/management/manage-resource-groups-portal)
* [Terraform azurerm_resource_group](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group)

## Authors
Created and maintained by Rui Matos.  
©Rui Matos 2023

## License
This source code is licensed under the Apache-2.0 license found in the
LICENSE file in the root directory of this source tree [license] (./LICENSE.md).


---

[azure]: https://portal.azure.com
[azure-badge]: https://img.shields.io/badge/cloud-Microsoft%20Azure-blue
[readme]: ./README.md
[readme-badge]: https://img.shields.io/badge/readme-information-red
[usage]: ./USAGE.md
[usage-badge]: https://img.shields.io/badge/usage-examples-lightgrey
[changelog]: ./CHANGELOG.md
[changelog-badge]: https://img.shields.io/badge/changelog-release-green
[license]: ./LICENSE.md
[license-badge]: https://img.shields.io/badge/license-%40Rui%20Matos-orange
[notice]: ./NOTICE.md
[notice-badge]: https://img.shields.io/badge/notice-%40copyright-lightgrey
