provider "google" {
  project = "<project-id>"
  region  = "asia-northeast3"
}

terraform {
  backend "gcs" {
    bucket = "<bucket-name>"
    prefix = "terraform-gke"
  }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 4.51.0, < 4.65.0"
    }
  }
}
