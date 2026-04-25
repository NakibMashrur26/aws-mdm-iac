provider "aws" {
  region = "us-east-2"
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}

module "munki_repo" {
  source = "./modules/s3"

  bucket_name = "nakib-munki-repo"
  environment = "dev"

  tags = {
    Project = "macos-iac"
    Owner   = "nakib"
    Test    = "pr-workflow"
  }
}