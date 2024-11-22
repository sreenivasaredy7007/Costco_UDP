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
  description = "The name of the storage bucket"
  type        = string
}

variable "location" {
  description = "The location of the storage bucket"
  type        = string
}

variable "storage_class" {
  description = "The storage class of the bucket (e.g., STANDARD, NEARLINE)"
  type        = string
}

variable "force_destroy" {
  description = "Whether to force destroy the bucket when it is deleted"
  type        = bool
  default     = false
}

