provider "google" {
  project = var.gcp_project
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name          = var.bucket_name
  location      = "US"
  force_destroy = true
}
