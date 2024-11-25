data "template_file" "pubsub_template" {
  template = file("${path.module}/pubsub.tf.tpl")

  vars = {
    topic_name        = var.topic_name
    subscription_name = var.subscription_name
  }
}

output "pubsub_configuration" {
  value = data.template_file.pubsub_template.rendered
}
