Setup an App Registration, Enterprise Application and appropriate permissions for an OAuth application.

Getting an error about admin consent? 
1. Go the the Entra portal https://entra.microsoft.com/
2. Navigate to the App Registration -> API permissions -> Grant Admin Consent

### Permissions needed
You need the *Cloud Application Administrator* role on your Entra tenet.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | ~> 2.45.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | ~> 2.45.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azuread_application_api_access.msgraph](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_api_access) | resource |
| [azuread_application_password.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_password) | resource |
| [azuread_application_redirect_uris.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_redirect_uris) | resource |
| [azuread_application_registration.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/application_registration) | resource |
| [azuread_service_principal.main](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/resources/service_principal) | resource |
| [azuread_application_published_app_ids.well_known](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/application_published_app_ids) | data source |
| [azuread_client_config.current](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/client_config) | data source |
| [azuread_service_principal.msgraph](https://registry.terraform.io/providers/hashicorp/azuread/latest/docs/data-sources/service_principal) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_app_role_assignment_required"></a> [app\_role\_assignment\_required](#input\_app\_role\_assignment\_required) | If true, internal users are required to be assigned to this app | `bool` | `true` | no |
| <a name="input_app_url"></a> [app\_url](#input\_app\_url) | URL of the application | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name of the Application in AAD | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_azuread_application_password"></a> [azuread\_application\_password](#output\_azuread\_application\_password) | AzureAD Client Secret |
| <a name="output_azuread_application_registration_id"></a> [azuread\_application\_registration\_id](#output\_azuread\_application\_registration\_id) | AzureAD Client ID |
| <a name="output_azuread_tenet_id"></a> [azuread\_tenet\_id](#output\_azuread\_tenet\_id) | AzureAD Tenet ID |
<!-- END_TF_DOCS -->