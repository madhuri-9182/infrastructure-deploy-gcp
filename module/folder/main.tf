terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.5.0"
    }
  }
}
provider "google" {
  credentials = file("key.json")
  project = "quick-composite-404605"
}

resource "google_folder" "my_folder" {
  display_name = var.folder_name
  parent       = var.org_id
}
