resource "google_cloud_run_v2_service" "backend" {
  name                = "backend-service"
  location            = "europe-west3"
  deletion_protection = false
  ingress             = "INGRESS_TRAFFIC_ALL"

  template {
    containers {
      image = "europe-west3-docker.pkg.dev/itnderary/backend/v2:latest"
    }
  }
}
