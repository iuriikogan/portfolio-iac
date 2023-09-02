resource "digitalocean_vpc" "portfolio-vpc" {
  name = "portfolio-vpc"

  region = var.region

  ip_range = "192.168.42.0/24"
}

resource "digitalocean_certificate" "cert" {
  name    = "portfolio-cert"
  type    = "lets_encrypt"
  domains = ["www.iuriikogan.com"]
}

# resource "digitalocean_domain" "portfolio-domain" {
#   name = "iuriikogan.com"
#   ip_address = var.portfolio_ingress_ip
# }