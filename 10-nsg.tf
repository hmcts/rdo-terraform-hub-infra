/*
resource "azurerm_network_security_rule" "Ansible_Public_IPs" {
  name                                = "Ansible_Agent_Public_IP"
  description		                      = "Ansible Agent Public IP Address"
  priority                            = 202
  direction                           = "Inbound"
  access                              = "Allow"
  protocol                            = "*"
  source_port_range                   = "*"
  destination_port_range              = "*"
  source_address_prefix               = "${azurerm_public_ip.pip-ansible.ip_address}"
  destination_address_prefix          = "*"
  resource_group_name                 = "${data.azurerm_resource_group.rg-hub.name}"
  network_security_group_name         = "${data.azurerm_network_security_group.nsg-mgmt.name}"
}
*/