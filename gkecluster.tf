 resource "google_container_cluster" "gke-test-cluster" {
    name                   = "gke-test-cluster"
    network                = "default"
    initial_node_count     = 3
    zone                   = "us-east1-b"

}

