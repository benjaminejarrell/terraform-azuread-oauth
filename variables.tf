variable "name" {
  type        = string
  description = "Name of the Application in AAD"
}

variable "app_role_assignment_required" {
  type        = bool
  description = "If true, internal users are required to be assigned to this app"
  default     = true
}

variable "app_url" {
  type        = string
  description = "URL of the application"
}
