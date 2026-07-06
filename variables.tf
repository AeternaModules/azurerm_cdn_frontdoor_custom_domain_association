variable "cdn_frontdoor_custom_domain_associations" {
  description = <<EOT
Map of cdn_frontdoor_custom_domain_associations, attributes below
Required:
    - cdn_frontdoor_custom_domain_id
    - cdn_frontdoor_route_ids
EOT

  type = map(object({
    cdn_frontdoor_custom_domain_id = string
    cdn_frontdoor_route_ids        = list(string)
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_cdn_frontdoor_custom_domain_association's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: cdn_frontdoor_custom_domain_id
  #   source:    [from validate.FrontDoorCustomDomainID] !ok
  # path: cdn_frontdoor_custom_domain_id
  #   source:    [from validate.FrontDoorCustomDomainID] err != nil
  # path: cdn_frontdoor_route_ids[*]
  #   source:    [from validate.FrontDoorRouteID] !ok
  # path: cdn_frontdoor_route_ids[*]
  #   source:    [from validate.FrontDoorRouteID] err != nil
}

