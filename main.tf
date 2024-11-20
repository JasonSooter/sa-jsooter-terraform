terraform {
  required_providers {
    segment = {
      source  = "segmentio/segment"
      version = "1.2.0"
    }
  }
}

# Create a Source
resource "segment_source" "terraform_created_source" {
  enabled  = true
  metadata = { id = "iUM16Md8P2" }
  name     = "Source Created By Terraform"
  settings = jsonencode({})
  slug     = "source_created_by_terraform"
}

# Connect the Source to a Destination
resource "segment_destination" "terraform_created_webhook_destination" {
  name      = "Terraform Created Webhook Destination"
  enabled   = true
  source_id = segment_source.terraform_created_source.id
  metadata  = { id = "614a3c7d791c91c41bae7599" }
  settings  = jsonencode({})
}

# Create a Mapping for the Destination
resource "segment_destination_subscription" "webhook_send_event_to_pipedream" {
  action_id      = "nFPnRozhz1mh4Gbx4MLvT5"
  destination_id = segment_destination.terraform_created_webhook_destination.id
  enabled        = true
  name           = "Send Event to Pipedream"
  settings = jsonencode({
    method = "POST",
    url    = "<your_webhook_url>",
    data   = { "@path" = "$." }
  })
  trigger = "type = \"track\""
}

# terraform state rm segment_source.terraform_created_source
# terraform state rm segment_destination.terraform_created_webhook_destination
# terraform state rm segment_destination_subscription.webhook_send_event_to_pipedream
#
# terraform apply -destroy
