resource "digitalocean_kubernetes_cluster" "iuriikogan-portfolio-cluster" {
  name     = "iuriikogan-portfolio-cluster"
  region   = var.region
  version  = "1.26.9-do.0"
  vpc_uuid = digitalocean_vpc.portfolio-vpc.id

<<<<<<< HEAD
    node_pool {
    name       = "worker-pool"
    size       = "s-2vcpu-2gb"
    node_count = 2
  }
}
=======
  node_pool "portfolio_node_pool" {
    
  }
}
>>>>>>> 52bb055 (remove aws)
