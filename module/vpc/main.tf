provider "google" {

  project     = var.project_ID
  credentials = file("key.json")
}

# create a VPC 

resource "google_compute_network" "network" {

  name = var.my_network
  auto_create_subnetworks = "false"
  }


# creating a subnet

resource "google_compute_subnetwork" "subnet" {
    name = var.subnet_name
    region = var.subnet_region
    network = google_compute_network.network.name
    ip_cidr_range =  var.subnet_cidr
}

# creating firewall

resource "google_compute_firewall" "sceg_firewall" {
  name = var.firewall_name
  network = google_compute_network.network.name
  source_ranges = var.source_ranges
  allow {
    protocol = var.protocols
    ports    = var.ports
  }
}