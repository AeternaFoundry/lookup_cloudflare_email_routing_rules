output "email_routing_rules_lookup_enabled" {
  description = "Map of enabled values across all email_routing_rules_lookup, keyed the same as var.email_routing_rules_lookup except keys with no enabled are omitted"
  value       = { for k, v in data.cloudflare_email_routing_rules.email_routing_rules_lookup : k => v.enabled if v.enabled != null }
}
output "email_routing_rules_lookup_max_items" {
  description = "Map of max_items values across all email_routing_rules_lookup, keyed the same as var.email_routing_rules_lookup except keys with no max_items are omitted"
  value       = { for k, v in data.cloudflare_email_routing_rules.email_routing_rules_lookup : k => v.max_items if v.max_items != null }
}
output "email_routing_rules_lookup_result" {
  description = "Map of result values across all email_routing_rules_lookup, keyed the same as var.email_routing_rules_lookup except keys with no result are omitted"
  value       = { for k, v in data.cloudflare_email_routing_rules.email_routing_rules_lookup : k => v.result if v.result != null && length(v.result) > 0 }
}
output "email_routing_rules_lookup_zone_id" {
  description = "Map of zone_id values across all email_routing_rules_lookup, keyed the same as var.email_routing_rules_lookup except keys with no zone_id are omitted"
  value       = { for k, v in data.cloudflare_email_routing_rules.email_routing_rules_lookup : k => v.zone_id if v.zone_id != null && length(v.zone_id) > 0 }
}

