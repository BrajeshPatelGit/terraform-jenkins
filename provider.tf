terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
    }
    tls = {
      source  = "hashicorp/tls"
    }
    local = {
      source  = "hashicorp/local"
    }
  }
}

provider "aws" {
  region                   = "ap-south-1"
  shared_credentials_files = ["/Users/mamtapatel/.aws/credentials"]
}