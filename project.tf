resource "google_project" "itnderary" {
  name       = "itnderary"
  project_id = "itnderary"

  lifecycle {
    ignore_changes = [billing_account]
  }
}
