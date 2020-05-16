provider "google" {
  credentials = "${file("account.json")}"
  project = "idwall"
  region = "us-central1"
  zone = "us-west1-a"
}

resource "google_compute_instance" "idwall-apache" {
  name = "idwall-apache"
  machine_type = "n1-standard-1"

  boot_disk {
      initialize_params {
      image = "cos-cloud/cos-stable-81-12871-103-0"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }

  metadata = {
    user-data = "${file("cloudinit.yaml")}"
  }
}

output "vm_ip" {
  value = google_compute_instance.idwall-apache.network_interface.0.access_config.0.nat_ip 
}

