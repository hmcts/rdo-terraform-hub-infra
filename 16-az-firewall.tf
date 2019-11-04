# Azure Native Firewall
module "firewall" {
  source             = "github.com:hmcts/azure-native-firewall.git"
  rg_name            = data.azurerm_resource_group.rg-hub.name
  vnet_name          = data.azurerm_virtual_network.vnet-hub.name
  common_tags        = var.common_tags
  environment        = var.environment
  aks_config         = var.aks_config
  az_native_firewall = var.az_native_firewall
  location           = data.azurerm_resource_group.rg-hub.location
  subnet_id          = data.azurerm_subnet.sub-hub-az-firewall.id
}