terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project     = "astute-atlas-448617-n8"
  region      = "us-central1"
  credentials = file("credentials.json")
}

resource "google_storage_bucket" "example" {
  name     = "my-secure-bucket-1234556"
  location = "US"

  versioning {
    enabled = true
  }
}
resource "google_project_iam_member" "storage_admin" {
  project = "astute-atlas-448617-n8"
  role    = "roles/storage.admin"
  member  = "serviceAccount:terraform-github@astute-atlas-448617-n8.iam.gserviceaccount.com"
}