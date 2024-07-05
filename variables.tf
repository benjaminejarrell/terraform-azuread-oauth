variable "name" {
  type        = string
  description = "Name of the Application in EntraID"
}

variable "app_role_assignment_required" {
  type        = bool
  description = "If true, internal users are required to be assigned to this app"
  default     = true
}

variable "redirect_uri" {
  type        = string
  description = "Where the application sends the user after authorization. Also called reply URL."
}

variable "app_visible" {
  type        = bool
  description = "If true, the Enterprise Application will be visible to users in My Apps and Office 365 Launcher"
  default     = false
}
