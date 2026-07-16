output "cdn_frontdoor_custom_domain_associations_id" {
  description = "Map of id values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_custom_domain_id" {
  description = "Map of cdn_frontdoor_custom_domain_id values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations : k => v.cdn_frontdoor_custom_domain_id if v.cdn_frontdoor_custom_domain_id != null && length(v.cdn_frontdoor_custom_domain_id) > 0 }
}
output "cdn_frontdoor_custom_domain_associations_cdn_frontdoor_route_ids" {
  description = "Map of cdn_frontdoor_route_ids values across all cdn_frontdoor_custom_domain_associations, keyed the same as var.cdn_frontdoor_custom_domain_associations"
  value       = { for k, v in azurerm_cdn_frontdoor_custom_domain_association.cdn_frontdoor_custom_domain_associations : k => v.cdn_frontdoor_route_ids if v.cdn_frontdoor_route_ids != null && length(v.cdn_frontdoor_route_ids) > 0 }
}

