resource "digitalocean_kubernetes_cluster" "projeto-terraform-k8s" {
  name     = "projeto-terraform-cluster"
  region   = "nyc3"
  version  = "1.26.3-do.0"
  vpc_uuid = data.digitalocean_vpc.projeto-terraform.id

  node_pool {
    name       = "projeto-terraform-pool"
    size       = "s-2vcpu-2gb"
    node_count = 3
  }
}

resource "digitalocean_spaces_bucket_object" "kubeconfig" {
  depends_on = [digitalocean_spaces_bucket.projeto-terraform-1]
  key        = "kubeconfig"
  bucket     = digitalocean_spaces_bucket.projeto-terraform-1.name
  source     = "${path.cwd}/kubeconfig"
  region     = "nyc3"
}

resource "kubernetes_namespace" "projeto-terraform-k8s" {
  metadata {
    name = "projeto-terraform-k8s"
  }
}