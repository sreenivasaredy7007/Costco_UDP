resource "google_bigquery_dataset" "dataset" {
  dataset_id = "${dataset_id}"
  project    = "${project_id}"
  location   = "${location}"
}

resource "google_bigquery_table" "table" {
  dataset_id = google_bigquery_dataset.dataset.dataset_id
  table_id   = "${table_id}"
  project    = google_bigquery_dataset.dataset.project
  schema     = <<EOF
[
  {
    "name": "id",
    "type": "INTEGER",
    "mode": "REQUIRED"
  },
  {
    "name": "name",
    "type": "STRING",
    "mode": "REQUIRED"
  },
  {
    "name": "created_at",
    "type": "TIMESTAMP",
    "mode": "REQUIRED"
  }
]
EOF
}

resource "google_bigquery_table_data" "sample_data" {
  table_id   = google_bigquery_table.table.table_id
  dataset_id = google_bigquery_table.table.dataset_id
  project    = google_bigquery_table.table.project

  rows = [
    { id = 1, name = "Alice", created_at = "2024-01-01T00:00:00Z" },
    { id = 2, name = "Bob", created_at = "2024-01-02T00:00:00Z" },
    { id = 3, name = "Charlie", created_at = "2024-01-03T00:00:00Z" },
    { id = 4, name = "Diana", created_at = "2024-01-04T00:00:00Z" },
    { id = 5, name = "Eve", created_at = "2024-01-05T00:00:00Z" },
    { id = 6, name = "Frank", created_at = "2024-01-06T00:00:00Z" },
    { id = 7, name = "Grace", created_at = "2024-01-07T00:00:00Z" },
    { id = 8, name = "Hank", created_at = "2024-01-08T00:00:00Z" },
    { id = 9, name = "Ivy", created_at = "2024-01-09T00:00:00Z" },
    { id = 10, name = "Jack", created_at = "2024-01-10T00:00:00Z" }
  ]
}
