terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

#AWS S3 tfstate backend configuration
terraform {
    backend "s3" {
        bucket = "remote-state-pratyu-aws"
        key    = "docker-dev-sg-rules.tfstate"
        region = "us-east-1"
        encrypt = true
        use_lockfile = true
    }
    }

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

