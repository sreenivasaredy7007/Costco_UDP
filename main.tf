provider "google" {
  project = "costco-udp"
  region  = "us-central1"
}

#resource "google_storage_bucket" "example_bucket" {
#  name          = "my-things-create"
#  location      = "US"
#  storage_class = "STANDARD"
#}
#
## Simulate a folder by creating a placeholder object
#resource "google_storage_bucket_object" "folder" {
#  name    = "my-bucket-folder/"  # The trailing slash is important to simulate a folder.
#  bucket  = google_storage_bucket.example_bucket.name  # Correct reference to the bucket.
#  content = ""  # Empty content to act as a placeholder.
#}
