terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 3.0"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_manifest" "nginx" {
  manifest = yamldecode(file("${path.module}/deployment.yaml"))

  field_manager {
    force_conflicts = true
  }
}
