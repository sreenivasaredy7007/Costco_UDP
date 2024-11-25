variable "environment_name" {
  description = "Name of the Composer environment"
}

variable "region" {
  description = "Region where Composer is deployed"
}

variable "zone" {
  description = "Zone for Composer environment"
}

variable "node_count" {
  description = "Number of nodes for the environment"
  default     = 3
}

variable "machine_type" {
  description = "Machine type for the environment nodes"
  default     = "n1-standard-1"
}

variable "image_version" {
  description = "Composer image version"
  default     = "composer-2.0.32-airflow-2.6.3"
}

variable "python_version" {
  description = "Python version used by Composer"
  default     = "3"
}

variable "network" {
  description = "VPC network for the environment"
}

variable "subnetwork" {
  description = "Subnetwork for the environment"
}

variable "service_account" {
  description = "Service account for Composer environment"
}

variable "pypi_packages" {
  description = "Custom PyPI packages to install"
  default     = "{}"
}
