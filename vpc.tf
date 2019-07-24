resource  "google_compute_network" "vpc" {
  name                    = "test-assessment-vpc"
  auto_create_subnetworks = "true"
  routing_mode            = "GLOBAL"
}

resource "google_compute_firewall" "allow-internal" {
  name                    = "fw-allow-internal"
  network                 = "${google_compute_network.vpc.name}"
  allow {
    protocol              = "icmp"
  }
  allow {
    protocol              = "tcp"
    ports                 = ["0-65535"]
  }
  allow {
    protocol              = "udp"
    ports                 = ["0-65535"]
  }
}

resource "google_compute_firewall" "ssh" {
   name                   = "allow-ssh"
   network                = "${google_compute_network.vpc.name}"
   allow {
    protocol = "tcp"
    ports    = ["22"]
  }
  target_tags = ["ssh"]
  }