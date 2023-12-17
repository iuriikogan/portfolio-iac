<<<<<<< HEAD
=======
resource "digitalocean_kubernetes_cluster" "iuriikogan-portfolio-cluster" {
  name     = "iuriikogan-portfolio-cluster"
  region   = var.region
  version  = "1.26.9-do.0"
  vpc_uuid = digitalocean_vpc.portfolio-vpc.id
>>>>>>> 3382c5b76185ffaa2517ab46e653f0a22ab8359d

