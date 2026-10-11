output "online_archives_id" {
  description = "Map of id values across all online_archives, keyed the same as var.online_archives except keys with no id are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.id if v.id != null && length(v.id) > 0 }
}
output "online_archives_archive_id" {
  description = "Map of archive_id values across all online_archives, keyed the same as var.online_archives except keys with no archive_id are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.archive_id if v.archive_id != null && length(v.archive_id) > 0 }
}
output "online_archives_cluster_name" {
  description = "Map of cluster_name values across all online_archives, keyed the same as var.online_archives except keys with no cluster_name are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "online_archives_coll_name" {
  description = "Map of coll_name values across all online_archives, keyed the same as var.online_archives except keys with no coll_name are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.coll_name if v.coll_name != null && length(v.coll_name) > 0 }
}
output "online_archives_collection_type" {
  description = "Map of collection_type values across all online_archives, keyed the same as var.online_archives except keys with no collection_type are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.collection_type if v.collection_type != null && length(v.collection_type) > 0 }
}
output "online_archives_criteria" {
  description = "Map of criteria values across all online_archives, keyed the same as var.online_archives except keys with no criteria are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => one(v.criteria) if v.criteria != null && length(v.criteria) > 0 }
}
output "online_archives_data_expiration_rule" {
  description = "Map of data_expiration_rule values across all online_archives, keyed the same as var.online_archives except keys with no data_expiration_rule are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => one(v.data_expiration_rule) if v.data_expiration_rule != null && length(v.data_expiration_rule) > 0 }
}
output "online_archives_data_process_region" {
  description = "Map of data_process_region values across all online_archives, keyed the same as var.online_archives except keys with no data_process_region are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => one(v.data_process_region) if v.data_process_region != null && length(v.data_process_region) > 0 }
}
output "online_archives_db_name" {
  description = "Map of db_name values across all online_archives, keyed the same as var.online_archives except keys with no db_name are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.db_name if v.db_name != null && length(v.db_name) > 0 }
}
output "online_archives_delete_on_create_timeout" {
  description = "Map of delete_on_create_timeout values across all online_archives, keyed the same as var.online_archives except keys with no delete_on_create_timeout are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.delete_on_create_timeout if v.delete_on_create_timeout != null }
}
output "online_archives_partition_fields" {
  description = "Map of partition_fields values across all online_archives, keyed the same as var.online_archives except keys with no partition_fields are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.partition_fields if v.partition_fields != null && length(v.partition_fields) > 0 }
}
output "online_archives_paused" {
  description = "Map of paused values across all online_archives, keyed the same as var.online_archives except keys with no paused are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.paused if v.paused != null }
}
output "online_archives_project_id" {
  description = "Map of project_id values across all online_archives, keyed the same as var.online_archives except keys with no project_id are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "online_archives_schedule" {
  description = "Map of schedule values across all online_archives, keyed the same as var.online_archives except keys with no schedule are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => one(v.schedule) if v.schedule != null && length(v.schedule) > 0 }
}
output "online_archives_state" {
  description = "Map of state values across all online_archives, keyed the same as var.online_archives except keys with no state are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.state if v.state != null && length(v.state) > 0 }
}
output "online_archives_sync_creation" {
  description = "Map of sync_creation values across all online_archives, keyed the same as var.online_archives except keys with no sync_creation are omitted"
  value       = { for k, v in mongodbatlas_online_archive.online_archives : k => v.sync_creation if v.sync_creation != null }
}

