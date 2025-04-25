module "service_account" {
  source       = "terraform-google-modules/service-accounts/google//modules/simple-sa"
  version      = "~> 4.0"
  project_id   = var.project_id
  prefix        = "test-sa"
  description  = "Cloud Run service account"
  display_name = "Cloud Run service account"
  project_roles = [
    "roles/run.admin",
    "roles/artifactregistry.writer",
    "roles/iam.serviceAccountUser",
    "roles/artifactregistry.repoAdmin",
    "roles/secretmanager.secretAccessor",
    "roles/logging.logWriter",
    "roles/cloudfunctions.admin",
    #"roles/pubsub.editor",
    "roles/logging.configWriter",
    "roles/run.invoker",
    "roles/run.developer",
    "roles/storage.objectViewer"
  ]
}

# Create a service account key
resource "google_service_account_key" "clrun_sa_key" {
  service_account_id = module.service_account.email
}
