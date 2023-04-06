
# Project-Terraform-DigitalOcean

This is small project, that create a cluster of kubernetes in DigitalOcean, and save file "terraform.tfstate" on a space in DigitalOcean.

# Resources that will be created

→ VPC

→ Space

→ Cluster Kubernetes


# Requirements

→ Terraform v1.4.2

→ AWS CLI

→ A Spaces Access Key and Secret

# Use

Terraform uses the standard .aws/credentials file to authenticate to the S3 (space) backend. This is created by the aws cli.


aws configure --profile digitalocean


After that, we can initialize the module, and provision our infrastructure.

→ terraform init

→ terraform plan

→ terraform apply







