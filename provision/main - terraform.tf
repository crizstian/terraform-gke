terraform {

  backend "gcs" {
    bucket = "crizstian-terraform"
    prefix = var.backend_prefix
  }

  required_providers {
    google = {
      source = "hashicorp/google"
    }
  }
}

provider "google" {
  project = var.gcp_project_id
  region  = var.gcp_region
  alias   = "gcp"
}
