terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 4.0"
    }
  }
}

provider "google" {
  project = "your-project-id"   
  region  = "us-central1"
}

resource "google_storage_bucket" "example" {
  name     = "my-secure-bucket-1234556"
  location = "US"

  versioning {
    enabled = true
  }
}
