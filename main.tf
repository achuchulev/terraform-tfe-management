terraform {
  required_providers {
    tfe = {
      version = "~> 0.25"
    }
  }
}

provider "tfe" {
  hostname = var.hostname
}

resource "tfe_workspace" "test" {
  name         = "my-new-tfc-workspace"
  organization = var.my-org-name
}

resource "null_resource" "test" {
  triggers = {
    id = uuid()
  }
  provisioner "local-exec" {
    command = "echo $TFE_TOKEN"
  }
}
