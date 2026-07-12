output "express_route_gateways_allow_non_virtual_wan_traffic" {
  description = "Map of allow_non_virtual_wan_traffic values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.allow_non_virtual_wan_traffic }
}
output "express_route_gateways_location" {
  description = "Map of location values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.location }
}
output "express_route_gateways_name" {
  description = "Map of name values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.name }
}
output "express_route_gateways_resource_group_name" {
  description = "Map of resource_group_name values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.resource_group_name }
}
output "express_route_gateways_scale_units" {
  description = "Map of scale_units values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.scale_units }
}
output "express_route_gateways_tags" {
  description = "Map of tags values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.tags }
}
output "express_route_gateways_virtual_hub_id" {
  description = "Map of virtual_hub_id values across all express_route_gateways, keyed the same as var.express_route_gateways"
  value       = { for k, v in azurerm_express_route_gateway.express_route_gateways : k => v.virtual_hub_id }
}

