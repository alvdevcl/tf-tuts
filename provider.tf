terraform {
  required_version = ">= 1.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = ">= 2.10.1"
    }
    bcrypt = {
      source  = "viktorradnai/bcrypt"
      version = ">= 0.1.2"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.22.0"
    }
    random = {
      source  = "hashicorp/random"
      version = ">= 3.3.2"
    }
    tls = {
      version = ">= 3.1.0"
      source  = "hashicorp/tls"
    }

    http = {
      version = ">= 2.1.0"
      source  = "hashicorp/http"
    }
  }
  #  backend "s3" {
  #    # Replace this with your bucket name!
  #    bucket         = "ops360primecloud-tfstate-poc"
  #    key            = "setup/terraform.tfstate.dev"
  #    region         = "us-east-1"

  #    # Replace this with your DynamoDB table name!
  #    dynamodb_table = "nvirginia_tfstate_locks_dev"
  #    encrypt        = true
  #  }
}
