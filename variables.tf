variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "region" {
  description = "Google Cloud region"
  type        = string
}

variable "bucket_name" {
  description = "Bucket name for Terraform backend and Dataflow"
  type        = string
}
