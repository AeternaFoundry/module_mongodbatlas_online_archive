variable "online_archives" {
  description = <<EOT
Map of online_archives, attributes below
Required:
    - cluster_name
    - coll_name
    - db_name
    - project_id
    - criteria (block):
        - date_field (optional)
        - date_format (optional)
        - expire_after_days (optional)
        - query (optional)
        - type (required)
Optional:
    - collection_type
    - delete_on_create_timeout
    - paused
    - sync_creation
    - data_expiration_rule (block):
        - expire_after_days (required)
    - data_process_region (block):
        - cloud_provider (optional)
        - region (optional)
    - partition_fields (block):
        - field_name (required)
        - order (required)
    - schedule (block):
        - day_of_month (optional)
        - day_of_week (optional)
        - end_hour (optional)
        - end_minute (optional)
        - start_hour (optional)
        - start_minute (optional)
        - type (required)
    - timeouts (block):
        - create (optional)
EOT

  type = map(object({
    cluster_name             = string
    coll_name                = string
    db_name                  = string
    project_id               = string
    collection_type          = optional(string)
    delete_on_create_timeout = optional(bool)
    paused                   = optional(bool)
    sync_creation            = optional(bool)
    criteria = object({
      date_field        = optional(string)
      date_format       = optional(string)
      expire_after_days = optional(number)
      query             = optional(string)
      type              = string
    })
    data_expiration_rule = optional(object({
      expire_after_days = number
    }))
    data_process_region = optional(object({
      cloud_provider = optional(string)
      region         = optional(string)
    }))
    partition_fields = optional(list(object({
      field_name = string
      order      = number
    })))
    schedule = optional(object({
      day_of_month = optional(number)
      day_of_week  = optional(number)
      end_hour     = optional(number)
      end_minute   = optional(number)
      start_hour   = optional(number)
      start_minute = optional(number)
      type         = string
    }))
    timeouts = optional(object({
      create = optional(string)
    }))
  }))
}

