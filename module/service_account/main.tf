resource "google_service_account" "service_account" {
  account_id   = var.service_id
  project      = var.project_id
  display_name = var.service_display
}
 /*resource "google_project_iam_custom_role" "customrole" {
  project = var.project_id
  role_id = "service.customroles"
  title       = "service_Role"
  description = "Custom role with specific permissions."

  permissions = [
    "compute.instances.create",
    "compute.instances.delete"
]
}*/

resource "google_project_iam_binding" "role" {
  project = var.project_id
  role =  var.customrole
 
  members = [
    "serviceAccount:${google_service_account.service_account.email}"
  ]
}


