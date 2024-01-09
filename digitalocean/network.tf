resource "digitalocean_vpc" "portfolio-vpc" {
  name = "portfolio-vpc"

  region = var.region

  ip_range = "192.168.42.0/24"
}

resource "digitalocean_loadbalancer" "portfolio_lb" {
  name        = "portfolio-loadbalancer-1"
  region      = "ams3"

  forwarding_rule {
    entry_port     = 80
    entry_protocol = "http"

    target_port     = 80
    target_protocol = "http"
  }
}

output "portfolio_lb_id" {
 value = "digitalocean_loadbalancer.portfolio_lb.loadbalancer_uuid"
}