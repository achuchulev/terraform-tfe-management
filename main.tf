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
  name         = "my-new-workspace"
  organization = var.my-org-name
}
