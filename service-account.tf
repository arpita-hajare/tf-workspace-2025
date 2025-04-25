#### ---create service account-----

resource "google_service_account" "devops_sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}
output "service_account_email" {
  value = google_service_account.devops_sa.email
}
