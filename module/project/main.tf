resource "google_project" "project" {
    name = var.new_project_name
    project_id = var.new_project_id
    folder_id  = var.sub_folder_id
}