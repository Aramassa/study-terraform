terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.21.0"
    }
  }
}

resource "newrelic_alert_channel" "warning" {
  name = "OpsGenie Warning for Akitsu Cluster"
  type = "opsgenie"
  config {
    api_key = "${var.opsgenie_apikey_warn}"
    region = "US"
    teams = "SRE"
    tags  = "warn"
  }
}

resource "newrelic_alert_channel" "critical" {
  name = "OpsGenie Critical for Akitsu Cluster"
  type = "opsgenie"
  config {
    api_key = "${var.opsgenie_apikey_crit}"
    region = "US"
    teams = "SRE"
    tags  = "crit"
  }
}

resource "newrelic_alert_policy" "warning" {
  name = "Akitsu Warning policy"
  channel_ids = [
    resource.newrelic_alert_channel.warning.id
  ]
}


resource "newrelic_alert_policy" "critical" {
  name = "Akitsu Critical policy"
  channel_ids = [
    resource.newrelic_alert_channel.critical.id
  ]
}
