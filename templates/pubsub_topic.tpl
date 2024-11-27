resource "google_pubsub_topic" "${topic_name}" {
  name = "${topic_name}"
  project = "${project_id}"
}
