variable "ingress_nginx_namespace" {
  type        = string
  description = "The nginx ingress namespace (it will be created if needed)."
  default     = "ingress-nginx"
}

variable "ingress_nginx_helm_version" {
  type        = string
  description = "The Helm version for the nginx ingress controller."
  default     = "4.7.1"
}

variable "cluster_issuer_name" {
  type        = string
  description = "The name of the cluster issuer."
  default     = "letsencrypt-prod"
}

variable "cluster_issuer_email" {
  type        = string
  description = "The email address for the cluster issuer."
  default     = "koganiurii@gmail.com"
}

variable "cluster_issuer_private_key_secret_name" {
  type        = string
  description = "The name of the secret that will store the private key for the cluster issuer."
  default     = "letsencrypt-prod"
}