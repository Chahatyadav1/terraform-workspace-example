module "compute" {
  source       = "./module/testing-tf"
  zone         = lookup(var.zone, terraform.workspace, "us-central1-b")
  region       = lookup(var.region, terraform.workspace, "us-central1")
  machine_type = lookup(var.machine_type, terraform.workspace, "n2-standard-1")
  project_id   = var.project_id

}
