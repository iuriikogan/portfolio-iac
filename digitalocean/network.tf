resource "digitalocean_vpc" "portfolio" {
  name = "portfolio"

  region = var.region

  ip_range = "192.168.44.0/24"
}

resource "digitalocean_domain" "portfolio" {
   name = "www.iuriikogan.com"
   ip_address = var.portfolio_ingress_ip
}

resource "digitalocean_certificate" "cert" {
  name    = "portfolio-cert"
  type    = "lets_encrypt"
  domains = ["www.iuriikogan.com"]
}