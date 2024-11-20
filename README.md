# Demo for Segment Terraform Provider

## Install Terraform

- https://developer.hashicorp.com/terraform/install

## Install Segment Terraform Provider

- https://registry.terraform.io/providers/segmentio/segment/latest/docs

## Initialize Terraform

```bash
terraform init
```

## View Plan of What Will Be Created

```bash
terraform plan
```

## Create resources (source, destination, and mapping)

```bash
PUBLIC_API_TOKEN=<your_public_api_token> terraform apply
```

## Cleanup / Destroy Resources

```bash
PUBLIC_API_TOKEN=<your_public_api_token> terraform apply -destroy
```
