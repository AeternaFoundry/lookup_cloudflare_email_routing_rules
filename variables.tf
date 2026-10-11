variable "email_routing_rules_lookup" {
  description = <<EOT
Map of email_routing_rules_lookup, attributes below
Optional:
    - enabled
    - max_items
    - zone_id
EOT

  type = map(object({
    enabled   = optional(bool)
    max_items = optional(number)
    zone_id   = optional(string)
  }))
}

