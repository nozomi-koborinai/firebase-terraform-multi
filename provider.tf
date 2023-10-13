terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 5.0"
    }
  }
}

provider "google-beta" {
  user_project_override = true
  billing_project       = var.project_id
}

provider "google-beta" {
  alias                 = "no_user_project_override"
  user_project_override = false
}