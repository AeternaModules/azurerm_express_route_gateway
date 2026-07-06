output "express_route_gateways" {
  description = "All express_route_gateway resources"
  value       = azurerm_express_route_gateway.express_route_gateways
}
output "express_route_gateways_allow_non_virtual_wan_traffic" {
  description = "List of allow_non_virtual_wan_traffic values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.allow_non_virtual_wan_traffic]
}
output "express_route_gateways_location" {
  description = "List of location values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.location]
}
output "express_route_gateways_name" {
  description = "List of name values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.name]
}
output "express_route_gateways_resource_group_name" {
  description = "List of resource_group_name values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.resource_group_name]
}
output "express_route_gateways_scale_units" {
  description = "List of scale_units values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.scale_units]
}
output "express_route_gateways_tags" {
  description = "List of tags values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.tags]
}
output "express_route_gateways_virtual_hub_id" {
  description = "List of virtual_hub_id values across all express_route_gateways"
  value       = [for k, v in azurerm_express_route_gateway.express_route_gateways : v.virtual_hub_id]
}

