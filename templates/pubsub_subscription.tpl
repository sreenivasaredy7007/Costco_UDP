resource "google_pubsub_subscription" "${subscription_name}" {
  name  = "${subscription_name}"
  topic = google_pubsub_topic.${topic_name}.id
  ack_deadline_seconds = "${ack_deadline_seconds}"
}
