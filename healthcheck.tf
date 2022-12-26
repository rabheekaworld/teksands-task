resource "kubernetes_deployment" "healthcheck" {
  metadata {
    name = "terraform-healthcheck"
    labels = {
      test = "healthcheck"
    }
  }

  spec {
    replicas = 3

    selector {
      match_labels = {
        test = "healthcheck"
      }
    }

    template {
      metadata {
        labels = {
          test = "healthcheck"
        }
      }

      spec {
        container {
          image = "nginx:1.21.6"
          name  = "healthcheck"

          resources {
            limits = {
              cpu    = "0.5"
              memory = "512Mi"
            }
            requests = {
              cpu    = "250m"
              memory = "50Mi"
            }
          }

          liveness_probe {
            http_get {
              path = "/"
              port = 80

              http_header {
                name  = "X-Custom-Header"
                value = "Awesome"
              }
            }

            initial_delay_seconds = 3
            period_seconds        = 3
          }
        }
      }
    }
  }
}