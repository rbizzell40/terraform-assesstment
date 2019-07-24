resource "google_compute_instance" "test-assesstment-vm" {
  name                   = "test-assesstment-vm"
  machine_type           = "n1-standard-1"
  zone                   = "us-east1-b"

  tags                   =  ["test"]

  boot_disk {
    initialize_params {
      image =   "debian-cloud/debian-9"
    }
  }


  // Local SSD disk
   scratch_disk {
   }

   network_interface {
     network = "default"

     access_config {
       // Ephemeral IP
     }
   }
}
