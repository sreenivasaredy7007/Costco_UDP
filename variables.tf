variable "project_id" {
  description = "Google Cloud project ID"
  type        = string
}

#variable "topic_name" {
#  description = "Pub/Sub topic name"
#  type        = string
#  default     = "my-topic"
#}
#
#variable "subscription_name" {
#  description = "Pub/Sub subscription name"
#  type        = string
#  default     = "my-subscription"
#}

variable "create_topic" {
  description = "Flag to control creation of the Pub/Sub topic"
  type        = bool
  default     = true  # Set to false if the topic already exists
}

variable "create_subscription" {
  description = "Flag to control creation of the Pub/Sub subscription"
  type        = bool
  default     = true  # Set to false if the subscription already exists
}


variable "service_account_email" {
  description = "Service account email for authentication"
  type        = string
  default     = ""  # You can set a default or pass it during apply
}
