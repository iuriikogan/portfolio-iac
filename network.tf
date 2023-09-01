resource "digitalocean_vpc" "portfolio" {
  name = "portfolio"

  region = var.region

  ip_range = "192.168.44.0/24"
}
