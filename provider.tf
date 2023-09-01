terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

<<<<<<< HEAD
data "digitalocean_ssh_key" "id_rsa" {
  name = "id_rsa"
} 
=======
>>>>>>> main

