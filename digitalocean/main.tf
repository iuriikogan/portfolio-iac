resource "digitalocean_kubernetes_cluster" "iuriikogan-portfolio-cluster" {
  name     = "iuriikogan-portfolio-cluster"
  region   = var.region
  version  = "1.26.9-do.0"
  vpc_uuid = digitalocean_vpc.portfolio-vpc.id

  node_pool {
    name       = "iuriikogan-portfolio-pool"
    size       = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes  = 1
    max_nodes  = 3
  }

}