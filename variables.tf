variable "express_route_gateways" {
  description = <<EOT
Map of express_route_gateways, attributes below
Required:
    - location
    - name
    - resource_group_name
    - scale_units
    - virtual_hub_id
Optional:
    - allow_non_virtual_wan_traffic
    - tags
EOT

  type = map(object({
    location                      = string
    name                          = string
    resource_group_name           = string
    scale_units                   = number
    virtual_hub_id                = string
    allow_non_virtual_wan_traffic = optional(bool)
    tags                          = optional(map(string))
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_express_route_gateway's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   condition: length(value) > 0
  #   message:   must not be empty
  # path: location
  #   source:    location.EnhancedValidate: no recognizable `if ... { errors = append(...) }` pattern - read it by hand
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] !ok
  # path: virtual_hub_id
  #   source:    [from virtualwans.ValidateVirtualHubID] err != nil
  # path: scale_units
  #   condition: value >= 1 && value <= 10
  #   message:   must be between 1 and 10
  # path: tags
  #   condition: length(value) <= 50
  #   message:   [from tags.Validate: invalid when len(value) > 50]
  #   source:    [from tags.Validate: invalid when len(value) > 50]
  # path: tags
  #   condition: length(value) <= 512
  #   message:   [from tags.Validate: invalid when len(value) > 512]
  #   source:    [from tags.Validate: invalid when len(value) > 512]
  # path: tags
  #   source:    [from tags.Validate] err != nil
  # path: tags
  #   condition: length(value) <= 256
  #   message:   [from tags.Validate: invalid when len(value) > 256]
  #   source:    [from tags.Validate: invalid when len(value) > 256]
}

