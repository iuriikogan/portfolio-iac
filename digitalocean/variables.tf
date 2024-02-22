variable "do_token" {}

variable "region" {
  type    = string
  default = "ams3"
}

<<<<<<< HEAD
variable "domains" {
  type = list(string)
  default = ["www.iuriikogan.dev"]
=======
variable "droplet_ids" {
  type    = list(string)
  default = []
>>>>>>> 52bb055 (remove aws)
}
