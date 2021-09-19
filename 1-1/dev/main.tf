provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    key = "medium-terraform/stage/terraform.tfstate"
    bucket = "terraform-backend-akitsu"
    region = "ap-northeast-1"
  }
}

module "s3" {
  source = "../modules/s3"
}
