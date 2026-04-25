terraform {
  cloud {
    organization = "nakib-iac"

    workspaces {
      name = "macos-iac-dev"
    }
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  required_version = ">= 1.6"
}