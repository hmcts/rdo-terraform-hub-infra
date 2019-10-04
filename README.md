This code will be used to build an Azure environment

Example terraform.tfvars file:
```
subscription_id = "aaa-aaa-aaa-aaa"
rg_name = "rg-infrastructure"
vnet_name = "vnet-infrastructure"
vnet_cidr = "10.0.0.0/16"
vnet_subnets = [
  "sub-db:10.0.0.0/24:nsg_db",
  "sub-app:10.0.1.0/24:nsg_app",
  "sub-web:10.0.2.0/24:nsg_web"
  "sub-fw-mgmt:10.0.3.0/24:nsg_fw"
  "sub-firewall-transit:10.0.4.0/24:nsg_transit"
]
nsg_list = [
  "nsg_db",
  "nsg_app"
]
nsg_rules = [
  "nsg_db:permit_trusted:200:Inbound:Allow:tcp:*:3389:*:*",
  "nsg_db:deny_all:300:Inbound:Deny:*:*:*:*:*",
  "nsg_app:permit_trusted:200:Inbound:Allow:tcp:*:9000:*:*",
  "nsg_app:deny_all:300:Inbound:Deny:*:*:*:*:*",
  "nsg_web:permit_trusted:200:Inbound:Allow:tcp:*:80:*:*",
  "nsg_fw:permit_trusted:200:Inbound:Allow:tcp:*:443:*:*",
  "nsg_transit:permit_trusted:200:Inbound:Allow:tcp:*:443:*:*",
]
firewall_name_prefix = "firewall"
firewall_username = "firewalladmin"
firewall_password = "secret-password"
firewall_replicas = 2
firewall_subnet_management = "sub-fw-mgmt"
firewall_subnet_transit = "sub-fw-transit"
```
