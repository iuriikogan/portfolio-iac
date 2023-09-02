# # Description: Terraform configuration for DigitalOcean Load Balancer

# resource "digitalocean_loadbalancer" "portfolio-lb" {
#   name   = "portfolio-lb"
#   region = var.region
#   vpc_uuid = digitalocean_vpc.portfolio-vpc.id

#   forwarding_rule {
#     entry_port     = 443
#     entry_protocol = "https"

#     target_port     = 80
#     target_protocol = "http"
    
#     certificate_name = digitalocean_certificate.cert.name
#   }
  
#   healthcheck {
#   port     = 22
#   protocol = "tcp"
#   }
#   droplet_ids = var.droplet_ids
# }

