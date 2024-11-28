resource "google_storage_bucket" "bucket" {
 name = var.buckettostoresf
 project = var.project_id
 location = var.bucketlocation
 force_destroy = "true"
 storage_class = "STANDARD"
 versioning {
   enabled = true
 }
}
resource "google_storage_bucket_object" "statefile" {
  name = var.objforsf
  bucket = google_storage_bucket.bucket.name
  source = var.statefilepath
}