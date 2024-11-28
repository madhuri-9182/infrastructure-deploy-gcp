resource "google_folder" "subfolder" {
  display_name = var.sub_folder
  parent       =  var.folder_id
}