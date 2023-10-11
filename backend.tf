terraform {
  backend "gcs" {
    bucket = "firebase-terraform-multi-${var.env}-backend"
  }
}