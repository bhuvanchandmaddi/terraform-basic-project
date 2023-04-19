terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
  backend "s3" {
    encrypt        = true
    bucket         = "tf-statefile-bucket-1928"
    dynamodb_table = "terraform-state-lock-dynamo"
    key            = "terraform.tfstate"
    region         = "ap-southeast-2"
  }
}
