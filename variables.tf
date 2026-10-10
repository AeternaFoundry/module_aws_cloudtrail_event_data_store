variable "cloudtrail_event_data_stores" {
  description = <<EOT
Map of cloudtrail_event_data_stores, attributes below
Required:
    - name
Optional:
    - billing_mode
    - kms_key_id
    - multi_region_enabled
    - organization_enabled
    - region
    - retention_period
    - suspend
    - tags
    - tags_all
    - termination_protection_enabled
    - advanced_event_selector (block):
        - field_selector (optional, block):
            - ends_with (optional)
            - equals (optional)
            - field (optional)
            - not_ends_with (optional)
            - not_equals (optional)
            - not_starts_with (optional)
            - starts_with (optional)
        - name (optional)
EOT

  type = map(object({
    name                           = string
    billing_mode                   = optional(string)
    kms_key_id                     = optional(string)
    multi_region_enabled           = optional(bool)
    organization_enabled           = optional(bool)
    region                         = optional(string)
    retention_period               = optional(number)
    suspend                        = optional(string)
    tags                           = optional(map(string))
    tags_all                       = optional(map(string))
    termination_protection_enabled = optional(bool)
    advanced_event_selector = optional(list(object({
      field_selector = optional(list(object({
        ends_with       = optional(list(string))
        equals          = optional(list(string))
        field           = optional(string)
        not_ends_with   = optional(list(string))
        not_equals      = optional(list(string))
        not_starts_with = optional(list(string))
        starts_with     = optional(list(string))
      })))
      name = optional(string)
    })))
  }))
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.ends_with == null || (alltrue([for x in item.ends_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.equals == null || (alltrue([for x in item.equals : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.not_ends_with == null || (alltrue([for x in item.not_ends_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.not_equals == null || (alltrue([for x in item.not_equals : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.not_starts_with == null || (alltrue([for x in item.not_starts_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  validation {
    condition = alltrue([
      for k, v in var.cloudtrail_event_data_stores : (
        v.advanced_event_selector == null || alltrue([for item in v.advanced_event_selector : (item.field_selector == null || alltrue([for item in item.field_selector : (item.starts_with == null || (alltrue([for x in item.starts_with : length(x) >= 1 && length(x) <= 2048])))]))])
      )
    ])
    error_message = "must be between 1 and 2048 characters"
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

