output "cdn_frontdoor_custom_domain_associations" {
  description = "All cdn_frontdoor_custom_domain_association resources"
  value       = azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_custom_domain_id" {
  description = "List of cdn_frontdoor_custom_domain_id values across all cdn_frontdoor_custom_domain_associations"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations : v.cdn_frontdoor_custom_domain_id]
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_route_ids" {
  description = "List of cdn_frontdoor_route_ids values across all cdn_frontdoor_custom_domain_associations"
  value       = [for k, v in azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations : v.cdn_frontdoor_route_ids]
}

