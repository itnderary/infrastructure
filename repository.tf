resource "google_artifact_registry_repository" "backend" {
  location      = "europe-west3"
  repository_id = "backend"
  description   = "Repository for the Itnderary back-end"
  format        = "DOCKER"

  cleanup_policy_dry_run = true

  docker_config {
    immutable_tags = false
  }
}

resource "google_artifact_registry_repository" "frontend" {
  location      = "europe-west3"
  repository_id = "frontend"
  description   = "Repository for the Itnderary front-end"
  format        = "DOCKER"

  cleanup_policy_dry_run = true

  docker_config {
    immutable_tags = false
  }
}
