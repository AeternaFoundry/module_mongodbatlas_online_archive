resource "mongodbatlas_online_archive" "online_archives" {
  for_each = var.online_archives

  cluster_name             = each.value.cluster_name
  coll_name                = each.value.coll_name
  db_name                  = each.value.db_name
  project_id               = each.value.project_id
  collection_type          = each.value.collection_type
  delete_on_create_timeout = each.value.delete_on_create_timeout
  paused                   = each.value.paused
  sync_creation            = each.value.sync_creation

  criteria {
    date_field        = each.value.criteria.date_field
    date_format       = each.value.criteria.date_format
    expire_after_days = each.value.criteria.expire_after_days
    query             = each.value.criteria.query
    type              = each.value.criteria.type
  }

  dynamic "data_expiration_rule" {
    for_each = each.value.data_expiration_rule != null ? [each.value.data_expiration_rule] : []
    content {
      expire_after_days = data_expiration_rule.value.expire_after_days
    }
  }

  dynamic "data_process_region" {
    for_each = each.value.data_process_region != null ? [each.value.data_process_region] : []
    content {
      cloud_provider = data_process_region.value.cloud_provider
      region         = data_process_region.value.region
    }
  }

  dynamic "partition_fields" {
    for_each = each.value.partition_fields != null ? each.value.partition_fields : []
    content {
      field_name = partition_fields.value.field_name
      order      = partition_fields.value.order
    }
  }

  dynamic "schedule" {
    for_each = each.value.schedule != null ? [each.value.schedule] : []
    content {
      day_of_month = schedule.value.day_of_month
      day_of_week  = schedule.value.day_of_week
      end_hour     = schedule.value.end_hour
      end_minute   = schedule.value.end_minute
      start_hour   = schedule.value.start_hour
      start_minute = schedule.value.start_minute
      type         = schedule.value.type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
    }
  }
}

