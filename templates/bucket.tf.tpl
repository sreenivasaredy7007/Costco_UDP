esource "google_storage_bucket" "bucket" {
  name          = "${bucket_name}"
  location      = "${location}"
  storage_class = "${storage_class}"
  force_destroy = "${force_destroy}"

#  lifecycle {
#    prevent_destroy = true  # Prevents accidental deletion
#  }
}
