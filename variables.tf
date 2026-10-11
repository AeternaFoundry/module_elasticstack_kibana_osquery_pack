variable "kibana_osquery_packs" {
  description = <<EOT
Map of kibana_osquery_packs, attributes below
Required:
    - name
    - queries
Optional:
    - description
    - enabled
    - policy_ids
    - shards
    - space_id
    - timeouts
    - kibana_connection (block):
        - api_key (optional)
        - bearer_token (optional)
        - ca_certs (optional)
        - endpoints (optional)
        - insecure (optional)
        - password (optional)
        - username (optional)
EOT

  type = map(object({
    name = string
    queries = map(object({
      ecs_mapping = optional(map(object({
        field  = optional(string)
        value  = optional(string)
        values = optional(set(string))
      })))
      platform       = optional(set(string))
      query          = string
      removed        = optional(bool)
      saved_query_id = optional(string)
      snapshot       = optional(bool)
      version        = optional(string)
    }))
    description = optional(string)
    enabled     = optional(bool)
    policy_ids  = optional(set(string))
    shards      = optional(map(number))
    space_id    = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
    kibana_connection = optional(list(object({
      api_key      = optional(string)
      bearer_token = optional(string)
      ca_certs     = optional(list(string))
      endpoints    = optional(list(string))
      insecure     = optional(bool)
      password     = optional(string)
      username     = optional(string)
    })))
  }))
}

