terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
  backend "gcs" {
    bucket = var.bucket_name
    prefix = "terraform/state"
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

# Modules
module "dataproc" {
  source       = "./modules/dataproc"
  cluster_name = "example-dataproc"
  region       = var.region
}

module "dataflow" {
  source        = "./modules/dataflow"
  job_name      = "example-dataflow"
  bucket_name   = var.bucket_name
  region        = var.region
}

module "pubsub" {
  source     = "./modules/pubsub"
  topic_name = "example-topic"
}

module "bigquery" {
  source     = "./modules/bigquery"
  dataset_id = "example_dataset"
  table_id   = "sample_table"
}

module "composer" {
  source = "./modules/composer"
  name   = "example-composer"
  region = var.region
}
