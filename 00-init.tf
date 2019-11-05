terraform {
  required_version                    = ">= 0.11.0"
  backend "azurerm" {}
}

provider "azurerm" {
  version                             = ">=1.24.0"
  subscription_id                     = "${var.subscription_id}"
}

provider "azurerm" {
  alias = "ithc"
}

provider "azurerm" {
  alias = "perftest"
}

provider "azurerm" {
  alias = "aat"
}

provider "azurerm" {
  alias = "prod"
}

provider "azurerm" {
  alias = "sbox"
}