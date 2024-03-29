variable "env" {}

provider "aws" {
  region = "ap-northeast-1"
}

terraform {
  backend "s3" {
    key = "lesson/1-1/prod/terraform.tfstate"
    bucket = "terraform-backend-akitsu"
    region = "ap-northeast-1"
  }
}

module "s3" {
  source = "../modules/s3"
  env = var.env
}
