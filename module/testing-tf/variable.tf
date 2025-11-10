variable "project_id" {
  description = "The GCP project ID"
  type        = string
  sensitive = true
}
variable "region" {
  description = "enter region"
  type = string 
}
variable "machine_type" {
  description = "enter machine type"
  type = string 
}
variable "zone" {
  description = "enter zone"
    type = string
} 