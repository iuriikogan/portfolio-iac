variable "do_token" {}

variable "region" {
  type    = string
  default = "ams3"
}

variable "droplet_ids" {
  type    = list(string)
  default = []
}

variable "portfolio_ingress_ip" {
  type    = string
  default = "192.168.42.112"
}