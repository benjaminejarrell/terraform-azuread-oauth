output "azuread_application_password" {
  description = "AzureAD Client Secret"
  value       = azuread_application_password.main.value
  sensitive   = true
}

output "azuread_application_registration_id" {
  description = "AzureAD Client ID"
  value       = azuread_application_registration.main.client_id
}

output "azuread_tenet_id" {
  description = "AzureAD Tenet ID"
  value       = local.azuread_tenet_id
}
