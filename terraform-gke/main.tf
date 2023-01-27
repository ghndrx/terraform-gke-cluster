provider "google" {
  version = "3.0"
  project = var.my-project-id
  region  = var.google_region
}

resource "google_container_cluster" "my-cluster" {
  name     = var.my-cluster
  location = var.google_region
  node_config {
    machine_type = var.machine_type
  }
  master_auth {
    username = var.username
    password = var.password
  }
}
# terraform apply -var 'my-cluster=my-cluster-name' -var 'my-project-id=my-project-id'
