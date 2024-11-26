variable "project_id" {
  description = "costco-udp"
  type        = string
}

variable "region" {
  description = "us-central1"
  type        = string
}

variable "bucket_name" {
  description = "GCS bucket for Terraform state"
  type        = string
  default     = "service_for_all" # Optionally set a default value
}
