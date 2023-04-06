resource "digitalocean_spaces_bucket" "projeto-terraform-1" {
  name   = "projeto-terraform-storage"
  region = "nyc3"
}

terraform {
  backend "s3" {
    bucket                      = "projeto-terraform-storage"
    key                         = "terraform.tfstate"
    region                      = "nyc3"
    endpoint                    = "https://projeto-terraform-storage.nyc3.digitaloceanspaces.com"
    skip_region_validation      = true
    skip_credentials_validation = true
    skip_metadata_api_check     = true
    force_path_style            = true
  }
}
