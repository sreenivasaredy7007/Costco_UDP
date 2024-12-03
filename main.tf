provider "google" {
  project = "costco-udp"
  region  = "us-central1"
}

resource "google_storage_bucket" "example_bucket" {
  name          = "my-things-create"
  location      = "US"
  storage_class = "STANDARD"
}
