output "cloudtrail_event_data_stores_id" {
  description = "Map of id values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloudtrail_event_data_stores_advanced_event_selector" {
  description = "Map of advanced_event_selector values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.advanced_event_selector if v.advanced_event_selector != null && length(v.advanced_event_selector) > 0 }
}
output "cloudtrail_event_data_stores_arn" {
  description = "Map of arn values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "cloudtrail_event_data_stores_billing_mode" {
  description = "Map of billing_mode values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.billing_mode if v.billing_mode != null && length(v.billing_mode) > 0 }
}
output "cloudtrail_event_data_stores_kms_key_id" {
  description = "Map of kms_key_id values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "cloudtrail_event_data_stores_multi_region_enabled" {
  description = "Map of multi_region_enabled values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.multi_region_enabled if v.multi_region_enabled != null }
}
output "cloudtrail_event_data_stores_name" {
  description = "Map of name values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.name if v.name != null && length(v.name) > 0 }
}
output "cloudtrail_event_data_stores_organization_enabled" {
  description = "Map of organization_enabled values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.organization_enabled if v.organization_enabled != null }
}
output "cloudtrail_event_data_stores_region" {
  description = "Map of region values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.region if v.region != null && length(v.region) > 0 }
}
output "cloudtrail_event_data_stores_retention_period" {
  description = "Map of retention_period values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.retention_period if v.retention_period != null }
}
output "cloudtrail_event_data_stores_suspend" {
  description = "Map of suspend values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.suspend if v.suspend != null && length(v.suspend) > 0 }
}
output "cloudtrail_event_data_stores_tags" {
  description = "Map of tags values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "cloudtrail_event_data_stores_tags_all" {
  description = "Map of tags_all values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "cloudtrail_event_data_stores_termination_protection_enabled" {
  description = "Map of termination_protection_enabled values across all cloudtrail_event_data_stores, keyed the same as var.cloudtrail_event_data_stores"
  value       = { for k, v in aws_cloudtrail_event_data_store.cloudtrail_event_data_stores : k => v.termination_protection_enabled if v.termination_protection_enabled != null }
}

