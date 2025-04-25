#### ---create service account-----

resource "google_service_account" "devops_sa" {
  account_id   = var.service_account_id
  display_name = var.service_account_display_name
}

resource "google_project_iam_member" "devops_sa_roles" {
  project = var.project_id
  role    = "roles/editor"  # or more granular like roles/storage.admin, etc.
  member  = "serviceAccount:${google_service_account.devops_sa.email}"
}
output "service_account_email" {
  value = google_service_account.devops_sa.email
}
