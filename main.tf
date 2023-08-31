resource "digitalocean_kubernetes_cluster" "iuriikogan-portfolio" {
  name = "iuriikogan-portfolio"
  region = "fra1"
  version = "1.25.12-do.0"
  
  node_pool {
    name = "iuriikogan-portfolio-pool"
    size = "s-2vcpu-2gb"
    auto_scale = true
    min_nodes = 1
    max_nodes = 3
  }
}