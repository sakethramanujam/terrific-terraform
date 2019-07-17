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