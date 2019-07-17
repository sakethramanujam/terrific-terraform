resource "google_cloudbuild_trigger" "update-trigger" {
  description  = "Fibonocci Cloud Run Trigger"
  project = "terrific-terraform"

  trigger_template {
    branch_name = "master"
    repo_name   = "github_sakethramanujam_terrific-terraform"
    dir = "fibrun/"
  }
  filename = "fibrun/cloudbuild.yaml"
}
resource "google_cloudbuild_trigger" "update-trigger-2" {
  description  = "Fibonocci 2 Cloud Run Trigger"
  project = "terrific-terraform"

  trigger_template {
    branch_name = "master"
    repo_name   = "github_sakethramanujam_terrific-terraform"
    dir = "fibrun_2/"
  }
  filename = "fibrun_2/cloudbuild.yaml"
}