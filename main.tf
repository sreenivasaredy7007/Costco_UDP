provider "google" {
  project = var.project_id
  region  = "us-central1"
}

# Render the topic template
data "template_file" "pubsub_topic" {
  template = file("${path.module}/templates/topic.tf.tpl")

  vars = {
    project_id = var.project_id
    topic_name = var.topic_name
  }
}

# Render the subscription template
data "template_file" "pubsub_subscription" {
  template = file("${path.module}/templates/subscription.tf.tpl")

  vars = {
    project_id        = var.project_id
    subscription_name = var.subscription_name
  }
}

# Output the rendered templates for verification (optional)
output "rendered_topic" {
  value = data.template_file.pubsub_topic.rendered
}

output "rendered_subscription" {
  value = data.template_file.pubsub_subscription.rendered
}

# Include resources using Terraform's `resource` blocks for actual deployment
#resource "google_pubsub_topic" "topic" {
#  name    = var.topic_name
#  project = var.project_id
#}

resource "google_pubsub_topic" "topic" {
  name = var.topic_name
  project = var.project_id

  lifecycle {
    prevent_destroy = true  # Prevents accidental deletion
    ignore_changes = [name]  # Ignores changes if the resource already exists
  }
}

resource "google_pubsub_subscription" "subscription" {
  name                 = var.subscription_name
  topic                = google_pubsub_topic.topic.id
  project              = var.project_id
  ack_deadline_seconds = 10
}

# To Create a Google Cloud Storage Creation.
# Render the bucket template
data "template_file" "bucket_template" {
  template = file("${path.module}/templates/bucket.tf.tpl")

  vars = {
    bucket_name   = var.bucket_name
    location      = var.location
    storage_class = var.storage_class
    #force_destroy = var.force_destroy
  }
}

# Output the rendered template for verification (optional)
output "rendered_bucket_template" {
  value = data.template_file.bucket_template.rendered
}

# Use the rendered template for creating the bucket
resource "google_storage_bucket" "bucket" {
  # Parsed values from template variables
  name          = var.bucket_name
  location      = var.location
  storage_class = var.storage_class
  #force_destroy = var.force_destroy

#  lifecycle {
#    prevent_destroy = true
#  }
}

output "bucket_url" {
  value = "gs://${google_storage_bucket.bucket.name}"
  description = "gs://upd-stg123/"
}
