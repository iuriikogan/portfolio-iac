resource "digitalocean_domain" "portfolio" {
   name = "www.iuriikogan.com"
   ip_address = var.portfolio_ingress_ip
}

resource "digitalocean_certificate" "cert" {
  name    = "portfolio-cert"
  type    = "lets_encrypt"
  domains = ["www.iuriikogan.com"]
}