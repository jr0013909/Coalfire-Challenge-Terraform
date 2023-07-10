terraform {
  #   required_version = "~> 1.1.9"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.15.1"
    }
    archive = {
      source  = "hashicorp/archive"
      version = "~> 2.0.0"
    }
  }
}

provider "aws" {
  region = var.region
}
