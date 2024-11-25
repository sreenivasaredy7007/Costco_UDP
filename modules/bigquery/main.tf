data "template_file" "bigquery_template" {
  template = file("${path.module}/bigquery.tf.tpl")

  vars = {
    project_id = var.project_id
    location   = var.location
    dataset_id = var.dataset_id
    table_id   = var.table_id
  }
}

output "bigquery_configuration" {
  value = data.template_file.bigquery_template.rendered
}
