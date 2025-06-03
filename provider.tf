terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9"
    }
  }
  backend "s3" {
    bucket  = "infrabucket-iacgitops-eu-central-1"
    key     = "terramodule/terraform.tfstate"
    region  = "eu-central-1"
    encrypt = true
  }
}