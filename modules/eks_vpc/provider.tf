terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.31.0"
    }
  }
}

provider "aws" {
  region = var.region_name
  assume_role {
    role_arn = "arn:aws:iam::799184738206:role/OrganizationAccountAccessRole"
  }
  default_tags {
    tags = {
      "Application" = "EKS-Cluster"
      "Tool"        = "Terragrunt-managed-resource"
    }
  }
}