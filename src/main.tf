terraform {
  required_providers {
    gitlab = {
      source  = "gitlabhq/gitlab"
      version = "17.2.0"
    }
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.113.0"
    }
  }

  required_version = "1.8.5"

  backend "local" {
    path = "terraform.tfstate"
  }
}
