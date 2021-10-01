variable "cluster_name" {}
variable "nr_api_key" {}
variable "opsgenie_apikey_warn" {}
variable "opsgenie_apikey_crit" {}

terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.21.0"
    }
  }
}

provider "newrelic" {
  api_key = "${var.nr_api_key}"
  account_id = 1869086
  region = "US"
}

terraform {
  backend "s3" {
    key = "lesson/1-4/akitsu/terraform.tfstate"
    bucket = "terraform-backend-akitsu"
    region = "ap-northeast-1"
  }
}

module "s3" {
  source = "../modules/newrelic-alert"
  cluster_name = var.cluster_name
  opsgenie_apikey_warn = var.opsgenie_apikey_warn
  opsgenie_apikey_crit = var.opsgenie_apikey_crit
}
