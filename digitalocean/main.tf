resource "digitalocean_kubernetes_cluster" "iuriikogan-portfolio-cluster" {
  name     = "iuriikogan-portfolio-cluster"
  region   = var.region
  version  = "1.26.9-do.0"
  vpc_uuid = digitalocean_vpc.portfolio-vpc.id

