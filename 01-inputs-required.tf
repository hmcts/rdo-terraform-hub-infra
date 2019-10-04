variable "subscription_id" { }

variable "infra_resource_group" { }

variable "backend_storage_account_name" { }
variable "backend_storage_container_name" { }
variable "backend_access_key" { }

variable "environment" { }

variable "rg_name" {
  description                 = "Name of the rg to put the network in"
}

variable "firewall_name_prefix" {
  default                     = "core-dmz-fw"
}

variable "firewall_username" {
  description                 = "Username to provision the VM with"
}

variable "firewall_password" {
  description                 = "Password to provision the VM with"
}

variable "firewall_subnet_management" {
  description                 = "Name of the subnet to be used for the firewall management nic"
}

variable "firewall_subnet_transit_private" {
  description                 = "Name of the subnet to be used for the firewall transit nic"
}

variable "firewall_subnet_transit_public" { }

variable "firewall_replicas" {
  default                             = 1
}

variable "vnet_name" { }
