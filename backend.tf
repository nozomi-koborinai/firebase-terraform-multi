terraform {
  backend "gcs" {
    bucket = "firebase-terraform-multi-dev-backend"
  }
}