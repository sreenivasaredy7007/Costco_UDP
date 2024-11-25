resource "google_composer_environment" "composer" {
  name   = "${environment_name}"
  region = "${region}"

  config {
    node_count = ${node_count}

    software_config {
      image_version       = "${image_version}"
      python_version      = "${python_version}"
      pypi_packages       = ${pypi_packages}
    }

    node_config {
      location       = "${zone}"
      machine_type   = "${machine_type}"
      network        = "${network}"
      subnetwork     = "${subnetwork}"
      service_account = "${service_account}"
    }
  }
}
