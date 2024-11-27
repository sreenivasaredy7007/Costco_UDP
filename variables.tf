variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

variable "topic_name" {
  description = "Name of the Pub/Sub topic"
  type        = string
}

variable "subscription_name" {
  description = "Name of the Pub/Sub subscription"
  type        = string
}

variable "ack_deadline_seconds" {
  description = "Ack deadline in seconds for the subscription"
  type        = number
  default     = 10
}
