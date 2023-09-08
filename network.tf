resource "digitalocean_vpc" "portfolio-vpc" {
  name = "portfolio-vpc"

  region = var.region

  ip_range = "192.168.42.0/24"
}

resource "digitalocean_certificate" "cert" {
  name    = "portfolio-cert"
  type    = "lets_encrypt"
  domains = var.domains
}
