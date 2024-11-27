provider "google" {
  project = var.project_id
  region  = "us-central1"
}

# Render the Pub/Sub topic template
data "template_file" "pubsub_topic" {
  template = file("${path.module}/templates/pubsub_topic.tpl")

  vars = {
    topic_name = var.topic_name
    project_id = var.project_id
  }
}

# Render the Pub/Sub subscription template
data "template_file" "pubsub_subscription" {
  template = file("${path.module}/templates/pubsub_subscription.tpl")

  vars = {
    subscription_name  = var.subscription_name
    topic_name         = var.topic_name
    ack_deadline_seconds = var.ack_deadline_seconds
  }
}

# Evaluate the templates using local-exec
resource "null_resource" "apply_templates" {
  provisioner "local-exec" {
    command = <<EOT
echo '${data.template_file.pubsub_topic.rendered}' > generated_pubsub_topic.tf
echo '${data.template_file.pubsub_subscription.rendered}' > generated_pubsub_subscription.tf
EOT
  }
}
