variable "project_id" {
  description = "costco-project-441414"
  type        = string
}

variable "topic_name" {
  description = "udp-tt-topic-test"
  type        = string
}

variable "subscription_name" {
  description = "udp-tt-topic-subscription"
  type        = string
}

variable "ack_deadline_seconds" {
  description = "Ack deadline in seconds for the subscription"
  type        = number
  default     = 10
}
