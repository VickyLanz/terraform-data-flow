locals {
  job_name = format("${var.job_name}-${random_integer.priority.result}")
}

resource "random_integer" "priority" {
  min = 1
  max = 50000
  
}

module "dataflow-job" {
  source  = "terraform-google-modules/dataflow/google"
  version = "0.1.0"
  project_id  = var.project_id
  name = local.job_name
  on_delete = "cancel"
  zone = var.zone
  max_workers = var.max_workers

  template_gcs_path =  var.gcp_template_path
  temp_gcs_location = "terraform-state-2048-app-prod/temp/tmp_dir"

}