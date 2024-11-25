data "template_file" "dataproc_template" {
  template = file("${path.module}/dataproc.tf.tpl")

  vars = {
    cluster_name = var.cluster_name
    region       = var.region
  }
}

resource "google_dataproc_cluster" "cluster" {
  count    = 1
  provider = google

  # Rendered template content applied here
  content = data.template_file.dataproc_template.rendered
}
