data "azurerm_resource_group" "rg-hub" {
  name                                      = "hmcts-hub-${var.environment}"
}

data "azurerm_virtual_network" "vnet-hub" {
  name                                      = "hmcts-hub-${var.environment}"
  resource_group_name                       = "hmcts-hub-${var.environment}"
}

data "azurerm_network_security_group" "nsg-mgmt" {
  name                                      = "nsg_mgmt"
  resource_group_name                       = "${data.azurerm_resource_group.rg-hub.name}"
}

data "azurerm_resource_group" "rg-dmz" {
  name                                      = "hmcts-dmz-${var.environment}"
}

data "azurerm_public_ip" "pip-ansible" {
  name                                      = "proxy-${var.environment}-pip"
  resource_group_name                       = "${data.azurerm_resource_group.rg-dmz.name}"
}


data "azurerm_subnet" "sub-hub-mgmt" {
  name                                      = "hub-mgmt"
  resource_group_name                       = "${data.azurerm_resource_group.rg-hub.name}"
  virtual_network_name                      = "${data.azurerm_virtual_network.vnet-hub.name}"
}

data "azurerm_subnet" "sub-hub-transit-public" {
  name                                      = "hub-transit-public"
  resource_group_name                       = "${data.azurerm_resource_group.rg-hub.name}"
  virtual_network_name                      = "${data.azurerm_virtual_network.vnet-hub.name}"
}

data "azurerm_subnet" "sub-hub-transit-private" {
  name                                      = "hub-transit-private"
  resource_group_name                       = "${data.azurerm_resource_group.rg-hub.name}"
  virtual_network_name                      = "${data.azurerm_virtual_network.vnet-hub.name}"
}

#data "azurerm_network_security_group" "nsg_mgmt" {
#  name                                      = "nsg_mgmt"
#  resource_group_name                       = "${data.azurerm_resource_group.rg_hub.name}"
#}



data "azurerm_network_interface" "proxy-ip" {
  name                                      = "proxy-${var.environment}-nic"
  resource_group_name                       = "${data.azurerm_resource_group.rg-dmz.name}"
}

locals {
  proxy-ip                                   = "${data.azurerm_network_interface.proxy-ip.private_ip_address}"
}
