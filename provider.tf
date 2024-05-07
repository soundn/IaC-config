terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.28.0"
    }
  }
}

provider "google" {
  project = "test-422618"
  region  = "us-central1"
  zone    = "us-central1-a"

}