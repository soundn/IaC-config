resource "google_service_account" "default" {
  account_id   = "test-422618"
  display_name = "kenvm"
}

resource "google_compute_instance" "default" {
  name         = "ken-instance"
  machine_type = "n2-standard-2"
  zone         = "us-central1-a"

  tags = ["webserver", "test"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "1"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "NVME"
  }

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }

  }
}