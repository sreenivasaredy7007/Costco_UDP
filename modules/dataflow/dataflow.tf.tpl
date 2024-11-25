resource "google_dataflow_job" "job" {
  name       = "${job_name}"
  template_gcs_path = "gs://${bucket_name}/templates/example-template"
  region     = "${region}"
}
