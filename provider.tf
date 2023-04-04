terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "2.27.1"
    }
  }
}

provider "digitalocean" {
  token             = var.token-api
  spaces_access_id  = var.access_key
  spaces_secret_key = var.secret_key
}

