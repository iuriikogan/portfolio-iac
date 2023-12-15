variable "do_token" {}

variable "region" {
  type    = string
  default = "ams3"
}

variable "droplet_ids" {
  type    = list(string)
  default = []
}

# variable "portfolio_ingress_ip" {
#   type    = string
# }

variable "domains" {
 type = list(string)
}
