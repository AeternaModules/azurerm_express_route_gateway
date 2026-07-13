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
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        length(v.name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        v.scale_units >= 1 && v.scale_units <= 10
      )
    ])
    error_message = "must be between 1 and 10"
  }
  validation {
    condition = alltrue([
      for k, v in var.express_route_gateways : (
        v.tags == null || (length(v.tags) <= 50)
      )
    ])
    error_message = "[from tags.Validate: invalid when len(value) > 50]"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

