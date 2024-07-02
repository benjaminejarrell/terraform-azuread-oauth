output "entraid_application_password" {
  description = "EntraID Client Secret"
  value       = azuread_application_password.main.value
  sensitive   = true
}

output "entraid_application_registration_id" {
  description = "EntraID Client ID"
  value       = azuread_application_registration.main.client_id
}

output "entraid_tenet_id" {
  description = "EntraID Tenet ID"
  value       = local.azuread_tenet_id
}

output "oidc_issuer" {
  description = "OIDC Issuer URL"
  value       = "https://login.microsoftonline.com/${local.azuread_tenet_id}/v2.0"
}
