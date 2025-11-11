variable "project_id" {
  description = "The GCP project ID"
  type        = string
  sensitive   = true
}
variable "region" {
  description = "enter region"
  type        = map(string)
  default = {
    "dev"     = "us-central1"
    "staging" = "us-west1"
    "prod"    = "us-east1"
  }
}
variable "machine_type" {
  description = "enter machine type"
  type        = map(string)
  default = {
    "dev"     = "n1-standard-1"
    "staging" = "n1-standard-1"
    "prod"    = "n1-standard-2"
  }
}
variable "zone" {
  description = "enter zone"
  type        = map(string)
  default = {
    "dev"     = "us-central1-a"
    "staging" = "us-west1-b"
    "prod"    = "us-east1-c"
  }
}   