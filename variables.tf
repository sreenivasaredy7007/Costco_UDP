variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "topic_name" {
  description = "Pub/Sub topic name"
  type        = string
  default     = "my-topic"
}

variable "subscription_name" {
  description = "Pub/Sub subscription name"
  type        = string
  default     = "my-subscription"
}

variable "service_account_email" {
  description = "Service account email for authentication"
  type        = string
  default     = ""  # You can set a default or pass it during apply
}

# To Create a Google Cloud storage -
variable "bucket_name" {
  description = "upd-stg1237007"
  type        = string
}

variable "location" {
  description = "Location of the bucket (e.g., US)"
  type        = string
  default     = "us-central1"
}

variable "storage_class" {
  description = "Storage class of the bucket (e.g., STANDARD)"
  type        = string
  default     = "STANDARD"
}

variable "force_destroy" {
  description = "Whether to force destroy the bucket"
  type        = bool
  default     = false
}

