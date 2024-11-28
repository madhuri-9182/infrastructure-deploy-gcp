provider "google" {

  project     = var.project_id
  credentials = file("key.json")
}
# vm
resource "google_compute_instance" "instance" {
  boot_disk {
    device_name = var.vm_device_name
 
    initialize_params {
      image = var.image 
      size  = var.size
      type  = var.disk_type
    }
  }
 
  machine_type = var.machine_type
  name         = var.instance_name
 
  network_interface {
    access_config {
    }
    network = var.network_interface
    subnetwork = var.subnetwork_interface
  }
 
  tags = var.firewall_tag
  zone = var.zone
}
 