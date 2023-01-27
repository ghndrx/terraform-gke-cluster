# Terraform Cluster

This repository contains Terraform code for creating a Google Kubernetes Engine (GKE) cluster. 

## Prerequisites
- Terraform 0.14 or later
- A Google Cloud Platform (GCP) project with the necessary permissions to create a GKE cluster
- A service account with the necessary permissions to create a GKE cluster

## Usage
1. Clone this repository
2. Create a `terraform.tfvars` file and set the following variables:
my-project-id = "your_gcp_project_id"
my-cluster = "your_gke_cluster_name"
google_region = "your_gcp_region"
machine_type = "your_gke_node_machine_type"
username = "your_gke_cluster_username"
password = "your_gke_cluster_password"

Copy code
3. Run `terraform init` to initialize the Terraform working directory
4. Run `terraform apply` to create the GKE cluster

***Please note that you need to replace the your_gcp_project_id,your_gke_cluster_name,your_gcp_region,your_gke_node_machine_type,your_gke_cluster_username,your_gke_cluster_password with your own values.

## Notes
- This code creates a GKE cluster with a single node. You can adjust the node_count variable in `main.tf` to create a cluster with more nodes.
- This code also creates a firewall rule that allows incoming traffic on port 80. You can adjust the firewall rule in `main.tf` to suit your needs.

## Cleanup
To delete the resources created by this code, run `terraform destroy`.

