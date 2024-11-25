variable "project_id" {
  description = "costco-udp"
  type        = string
}

variable "region" {
  description = ""
  type        = string
}

variable "bucket_name" {
  description = "Bucket name for Terraform backend and Dataflow"
  type        = string
}
