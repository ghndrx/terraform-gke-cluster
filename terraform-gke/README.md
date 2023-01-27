# Terraform Cluster

This repository contains Terraform code for creating a Google Kubernetes Engine (GKE) cluster. 

## Prerequisites
- Terraform 0.14 or later
- A Google Cloud Platform (GCP) project with the necessary permissions to create a GKE cluster
- A service account with the necessary permissions to create a GKE cluster

## Usage
1. Clone this repository
2. Create a `terraform.tfvars` file and set the following variables:
   - `my-project-id`: The ID of your GCP project
   - `my-cluster`: The name of your GKE cluster
   - `google_region`: The region where your GKE cluster will be created
   - `machine_type`: The machine type for your GKE nodes
   - `username`: The username for the master auth of your GKE cluster
   - `password`: The password for the master auth of your GKE cluster
3. Run `terraform init` to initialize the Terraform working directory
4. Run `terraform apply` to create the GKE cluster

## Notes
- This code creates a GKE cluster with a single node. You can adjust the node_count variable in `main.tf` to create a cluster with more nodes.
- This code also creates a firewall rule that allows incoming traffic on port 80. You can adjust the firewall rule in `main.tf` to suit your needs.

## Cleanup
To delete the resources created by this code, run `terraform destroy`.

