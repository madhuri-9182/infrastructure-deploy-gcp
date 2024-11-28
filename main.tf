provider "google" {
  credentials = file("key.json")
}

module "folder" {
  source = "./folder"
  folder_name = var.folder_name
  org_id = var.org_id
}

module "sub_folder" {
  source = "./sub_folder"
  sub_folder = var.sub_folder
  folder_id  = module.folder.folder_id
}

module "project" {
    source = "./project"
    new_project_name = var.new_project_name
    new_project_id = var.new_project_id
    sub_folder_id = module.sub_folder.sub_folder_id
}

module "service_account" {
    source = "./service_account"
    service_id  = var.service_id
    project_id   = var.project_id
    service_display = var.service_display
    customrole = var.customrole
    }

module "vpc" {
    source = "./vpc"
    project_ID = var.project_id
    my_network = var.network
    subnet_name = var.subnet_name
    subnet_region = var.subnet_region
    subnet_cidr =  var.subnet_cidr
    firewall_name = var.firewall_name
    source_ranges =var.source_ip_ranges
    protocols = var.protocol
    ports    = var.ports
}

module "instance" {
  source = "./virtual_machine"
  project_id = var.project_id
  vm_device_name = var.vm_device_name
  image = var.image
  size  = var.size
  disk_type  = var.disk_type
  machine_type = var.machine_type
  instance_name  = var.instance_name
  firewall_tag = var.firewall_tag
  zone = var.zone
  network_interface = module.vpc.network.name
  subnetwork_interface = module.vpc.subnetwork.name
}

module "bucket" {
   source = "./cloud_storage"
   buckettostoresf= var.buckettostoresf
   project_id = var.project_id
   bucketlocation= var.bucketlocation
   objforsf= var.objforsf
   statefilepath= var.statefilepath
}