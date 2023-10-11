terraform {
  required_providers {
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "~> 4.0"
    }
  }
}

provider "google-beta" {
  credentials = file("${path.module}/service-account-key.json")
  user_project_override = true
  billing_project       = var.project_id
}

provider "google-beta" {
  alias                 = "no_user_project_override"
  user_project_override = false
}