variable "cloud_project_database_mongodb_users" {
  description = <<EOT
Map of cloud_project_database_mongodb_users, attributes below
Required:
    - cluster_id
    - name
    - service_name
Optional:
    - password_reset
    - roles
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_id     = string
    name           = string
    service_name   = string
    password_reset = optional(string)
    roles          = optional(set(string))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

