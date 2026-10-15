terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/aws-k3s.yaml"
}

resource "kubernetes_manifest" "nginx" {
  manifest = yamldecode(file("${path.module}/deployment.yaml"))

  field_manager {
    force_conflicts = true
  }
}

resource "kubernetes_manifest" "nginx_service" {
  manifest = yamldecode(file("${path.module}/service.yaml"))

  field_manager {
    force_conflicts = true
  }
}

resource "kubernetes_manifest" "nginx_ingress" {
  manifest = yamldecode(file("${path.module}/ingress.yaml"))

  field_manager {
    force_conflicts = true
  }
}
