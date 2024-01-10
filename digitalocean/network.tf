resource "digitalocean_vpc" "portfolio-vpc" {
  name = "portfolio-vpc"

  region = var.region

  ip_range = "192.168.0.0/16"
}
