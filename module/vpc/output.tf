# vpc
output "network" {
  description = "name of the created VPC network"
  value       = google_compute_network.network
}
output "subnetwork" {
    description = "name of the created subnetwork"
    value       = google_compute_subnetwork.subnet
  
}