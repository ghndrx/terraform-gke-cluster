# You will need to define those variables in your variables.tf, and use terraform apply -var 'google_region=us-central1' -var 'machine_type=n1-standard-1' -var 'username=admin' -var 'password=password' to set them when you run terraform apply.

variable "my-project-id" {
  type = string
}

variable "my-cluster" {
  type = string
}

variable "google_region" {
  type = string
}

variable "machine_type" {
  type = string
}

variable "username" {
  type = string
}

variable "password" {
  type = string
}
