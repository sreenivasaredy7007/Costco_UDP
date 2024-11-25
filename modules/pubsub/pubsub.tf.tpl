resource "google_pubsub_topic" "topic" {
  name = "${topic_name}"
}

resource "google_pubsub_subscription" "subscription" {
  name                = "${subscription_name}"
  topic               = google_pubsub_topic.topic.id
  ack_deadline_seconds = 20
}
