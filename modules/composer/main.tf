data "template_file" "composer_template" {
  template = file("${path.module}/composer.tf.tpl")

  vars = {
    environment_name = var.environment_name
    region           = var.region
    zone             = var.zone
    node_count       = var.node_count
    machine_type     = var.machine_type
    image_version    = var.image_version
    python_version   = var.python_version
    network          = var.network
    subnetwork       = var.subnetwork
    service_account  = var.service_account
    pypi_packages    = jsonencode(var.pypi_packages)
  }
}

output "composer_configuration" {
  value = data.template_file.composer_template.rendered
}
