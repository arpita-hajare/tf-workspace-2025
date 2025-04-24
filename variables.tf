variable "project_id" {
  description = "The ID of the GCP project"
  type        = string
  default     = "devops"
}

variable "region" {
  description = "The region for GCP resources"
  type        = string
  default     = "us-central1"
}

variable "service_account_id" {
  description = "The ID of the service account"
  type        = string
  default     = "devops-service-account"
}

variable "service_account_display_name" {
  description = "The display name of the service account"
  type        = string
  default     = "DevOps Service Account"
}
