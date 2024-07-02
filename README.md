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
| <a name="requirement_azuread"></a> [azuread](#requirement\_azuread) | >= 2.52.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azuread"></a> [azuread](#provider\_azuread) | >= 2.52.0 |

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
| <a name="input_name"></a> [name](#input\_name) | Name of the Application in EntraID | `string` | n/a | yes |
| <a name="input_redirect_uri"></a> [redirect\_uri](#input\_redirect\_uri) | Where the application sends the user after authorization. Also called reply URL. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_entraid_application_password"></a> [entraid\_application\_password](#output\_entraid\_application\_password) | EntraID Client Secret |
| <a name="output_entraid_application_registration_id"></a> [entraid\_application\_registration\_id](#output\_entraid\_application\_registration\_id) | EntraID Client ID |
| <a name="output_entraid_tenet_id"></a> [entraid\_tenet\_id](#output\_entraid\_tenet\_id) | EntraID Tenet ID |
| <a name="output_oidc_issuer"></a> [oidc\_issuer](#output\_oidc\_issuer) | OIDC Issuer URL |
<!-- END_TF_DOCS -->