terraform {
  required_providers {
    segment = {
      source  = "segmentio/segment"
      version = "1.2.0"
    }
  }
}

provider "segment" {}
