provider "gitlab" {}

provider "azurerm" {
  features {
    keyvault {}
  }
}
