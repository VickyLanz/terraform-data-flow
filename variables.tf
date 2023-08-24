variable "project_id" {
  type = string
  description = "Provide the project ID"
}
variable "job_name" {
    type = string
    description = "name of the job"
}
variable "machine_type" {
  type = string
  description = "machine type for the worker node"
}
variable "region" {
  type = string
  description = "Ragion of the subnetwork"
}
variable "zone" {
  type = string
  description = "Zone in which worker node needs to be created"
}
variable "max_workers" {
    type = string
    description = "Maximum number of worker nodes to create"
}
variable "gcp_template_path" {
  type = string
  description = "please provide the bucket path"
  validation {
    condition = can(regex("^gs://",var.gcp_template_path))
    error_message = "Provided bucket path  is not valid."
  }
}
variable "temporary_gcs_path" {
  type = string
  description = "Temporary path for the data flow job to store files"
   validation {
    condition = can(regex("^gs://",var.temporary_gcs_path))
    error_message = "Provided bucket path  is not valid."
  }
}
