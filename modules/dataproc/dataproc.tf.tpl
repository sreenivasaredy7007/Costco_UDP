resource "google_dataproc_cluster" "cluster" {
  name   = "${cluster_name}"
  region = "${region}"

  cluster_config {
    master_config {
      num_instances = 1
      machine_type  = "n1-standard-4"
    }

    worker_config {
      num_instances = 2
      machine_type  = "n1-standard-4"
    }
  }
}
