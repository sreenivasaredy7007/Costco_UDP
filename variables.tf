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
