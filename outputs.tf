output "dataproc_cluster_name" {
  description = "Dataproc Cluster Name"
  value       = module.dataproc.cluster_name
}

output "dataflow_job_name" {
  description = "Dataflow Job Name"
  value       = module.dataflow.job_name
}

output "pubsub_topic_name" {
  description = "Pub/Sub Topic Name"
  value       = module.pubsub.topic_name
}

output "bigquery_dataset_id" {
  description = "BigQuery Dataset ID"
  value       = module.bigquery.dataset_id
}

output "composer_environment" {
  description = "Composer Environment Name"
  value       = module.composer.name
}
