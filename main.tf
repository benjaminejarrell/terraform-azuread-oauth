locals {
  azuread_tenet_id = data.azuread_client_config.current.tenant_id
  app_url          = var.app_url
}

# Grab the Entra Tenet ID
data "azuread_client_config" "current" {}

# Application Registation
resource "azuread_application_registration" "main" {
  display_name                           = var.name
  description                            = "SSO app for ${var.name}"
  sign_in_audience                       = "AzureADMyOrg"
  homepage_url                           = local.app_url
  implicit_access_token_issuance_enabled = true
  implicit_id_token_issuance_enabled     = true
}

# Secret used by the SP
resource "azuread_application_password" "main" {
  application_id = azuread_application_registration.main.id
}

resource "azuread_application_redirect_uris" "main" {
  application_id = azuread_application_registration.main.id
  type           = "Web"

  redirect_uris = [
    local.app_url,
    "${local.app_url}/oauth2/idpresponse"
  ]
}

# Enterprise Application
resource "azuread_service_principal" "main" {
  client_id                    = azuread_application_registration.main.client_id
  app_role_assignment_required = var.app_role_assignment_required
  owners                       = [data.azuread_client_config.current.object_id]
}

# Get well known MS service prinicpals
data "azuread_application_published_app_ids" "well_known" {}

# MSGraph default Microsoft SP
data "azuread_service_principal" "msgraph" {
  client_id = data.azuread_application_published_app_ids.well_known.result["MicrosoftGraph"]
}

# Grant access for the application registration to call msgraph/read users
resource "azuread_application_api_access" "msgraph" {
  application_id = azuread_application_registration.main.id
  api_client_id  = data.azuread_application_published_app_ids.well_known.result["MicrosoftGraph"]

  scope_ids = [
    data.azuread_service_principal.msgraph.oauth2_permission_scope_ids["openid"],
    data.azuread_service_principal.msgraph.oauth2_permission_scope_ids["User.Read"]
  ]
}
