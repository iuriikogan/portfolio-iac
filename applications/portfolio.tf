terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.0"
    }
  }
}
provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_namespace" "portfolio" {
  metadata {
    name = "portfolio"
  }
}
resource "kubernetes_deployment" "portfolio" {
  metadata {
    name      = "portfolio"
    namespace = kubernetes_namespace.portfolio.metadata.0.name
  }
  spec {
    replicas = 2
    selector {
      match_labels = {
        app = "portfolio"
      }
    }
    template {
      metadata {
        labels = {
          app = "portfolio"
        }
      }
      spec {
        container {
          image = "iuriikogan/portfolio:v2"
          name  = "portfolio"
          port {
            container_port = 80
          }
        }
      }
    }
  }
}
resource "kubernetes_service" "portfolio" {
  metadata {
    name      = "portfolio"
    namespace = kubernetes_namespace.portfolio.metadata.0.name
  }
  spec {
    selector = {
      app = kubernetes_deployment.portfolio.spec.0.template.0.metadata.0.labels.app
    }
    type = "NodePort"
    port {
      node_port   = 30201
      port        = 80
      target_port = 80
    }
  }
}

resource "kubernetes_ingress_v1" "portfolio-ingress" {
  wait_for_load_balancer = true
  metadata {
    name = "portfolio-ingress"
    namespace = "portfolio"
  }
  spec {
    ingress_class_name = "nginx"
    rule {
      host = "www.iuriikogan.com"
      http {
        path {
          path = "/*"
          backend {
            service {
              name = kubernetes_service.portfolio.metadata.0.name
              port {
                number = 80
              }
            }
          }
        }
      }
    }
    tls {
        hosts = ["www.iuriikogan.com"]
        secret_name = "portfolio-cert"
      }
  }
}
