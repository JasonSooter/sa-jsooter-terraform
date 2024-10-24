terraform {
  required_providers {
    segment = {
      source  = "segmentio/segment"
      version = "0.10.0"
    }
  }
}

provider "segment" {}


# /**
#  * Connect an Existing Source
#  */
# resource "segment_source" "existing_source" {
#   slug     = "http_api"
#   name     = "HTTP API"
#   enabled  = true
#   metadata = { id = "iUM16Md8P2" }
#   settings = jsonencode({})
# }
