resource "digitalocean_vpc" "portfolio-vpc" {
  name = "portfolio-vpc"

  region = var.region

  ip_range = "192.168.0.0/16"
}

resource "digitalocean_loadbalancer" "portfolio_loadbalancer" {
  name   = "portfolio-lb"
  region = "ams3"

  forwarding_rule {
    entry_port     = 443
    entry_protocol = "https"

    target_port     = 443
    target_protocol = "https"
    tls_passthrough = true
  }
} 

output "portfolio_lb_id" {
  value = digitalocean_loadbalancer.portfolio_loadbalancer.id
}