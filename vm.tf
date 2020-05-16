resource "google_compute_network" "idwall-network" {
  name = "idwall-network"
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
    network = "${google_compute_network.idwall-network.self_link}"
    access_config {}
  }

  metadata = {
    user-data = "${file("cloudinit.yaml")}"
  }
}

output "vm_ip" {
  value = google_compute_instance.idwall-apache.network_interface.0.access_config.0.nat_ip 
}

