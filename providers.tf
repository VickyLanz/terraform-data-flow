terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.79.0"
    }   
  }
  backend "gcs" {
    bucket = "terraform-state-2048-app-prod"
    prefix = "usc1/app-prod-01/"
  }
}

# provider "google" {
#   project = var.project-id
#   region = var.region
# }