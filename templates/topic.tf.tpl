resource "google_pubsub_topic" "topic" {
  name    = "${topic_name}"
  project = "${project_id}"
}
