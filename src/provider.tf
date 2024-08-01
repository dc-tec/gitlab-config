provider "gitlab" {
  token = var.gitlab_token
}

provider "azurerm" {
  features {
    keyvault {}
  }
}
