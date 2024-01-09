variable "do_token" {}

variable "region" {
  type    = string
  default = "ams3"
}

variable "domains" {
  type = list(string)
  default = ["www.iuriikogan.dev"]
}
