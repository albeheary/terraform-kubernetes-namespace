
resource "kubernetes_namespace" "example" {
  metadata {
    name = var.name
  }
}

resource "kubernetes_resource_quota" "example" {
  metadata {
    name = "pod-quota"
    namespace = kubernetes_namespace.this.metadata.0.name
  }
  spec {
    hard = {
      pods = 36 
    }
    scopes = ["BestEffort"]
  }
}


}