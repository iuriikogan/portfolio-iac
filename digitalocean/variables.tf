variable "do_token" {}

variable "region" {
  type    = string
  default = "ams3"
}

variable "droplet_ids" {
  type    = list(string)
  default = []
}

variable "domains" {
 type = list(string)
}
