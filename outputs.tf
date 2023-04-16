output "public_ip" { 
    value = azurerm_public_ip.main.ip_address
}

# output "Username" {
#     value = var.admin_username
# }

output "Password" { 
    value = var.admin_password
}


# output "destination_port_range" {
#   value = element(azurerm_network_security_group.main.security_rule.*.destination_port_range, 0)
# }


output "destination_port_range" {
  value = azurerm_network_security_group.main
}

