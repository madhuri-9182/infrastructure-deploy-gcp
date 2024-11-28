folder_name = "IT"

org_id =   "organizations/183514472791"

sub_folder = "CIS"

#folder_id = "folders/682659926798"

project_name = "madhuri-sceg041"

project_id = "madhuri-sceg041"

#sub_folder_id = "folders/880609345945"

service_id = "scegsa"

service_display = "sceg"

customrole = "roles/custom.service.customroles"

network = "vpc-network"

subnet_name = "subnet"

subnet_region = "us-central1"

subnet_cidr = "10.0.0.0/27"

firewall_name = "sceg"

source_ip_ranges = ["0.0.0.0/0"]

protocol = "tcp"

ports = ["22"]

vm_device_name = "my-instance"

disk_type = "pd-balanced"

machine_type = "e2-medium"

instance_name = "instance"

firewall_tag = ["http-server"]

zone = "us-central1-c"

size = "10"

image = "debian-cloud/debian-10"

buckettostoresf = "bucket_to_store_statefile"
  
bucketlocation = "us-central1"
  
objforsf = "statefile"
  
statefilepath = "./terraform.tfstate"