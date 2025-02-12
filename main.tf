provider "google" {
  project = "astute-atlas-448617-n8"   
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name     = "my-secure-bucket-1234556"    location = "US"

  versioning {
    enabled = true
  }
}
