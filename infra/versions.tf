terraform {
  required_version = "~> 1.4.0"
  
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }

  backend "s3" {
    region = "ca-central-1"
  }
}

provider "aws" {
  region              = "ca-central-1"
  shared_config_files = ["~/.aws/credentials"]
}
