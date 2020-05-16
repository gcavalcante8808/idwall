resource "google_compute_firewall" "web" {
    name = "idwall-web-access"
    network = "${google_compute_network.idwall-network.self_link}"

    allow {
        protocol = "tcp"
        ports = ["80","443"]
    }
}

resource "google_compute_firewall" "ssh" {
    name = "idwall-ssh-access"
    network = "${google_compute_network.idwall-network.self_link}"
    enable_logging =  true

    source_ranges = [var.ssh-authorized-ip]

    allow {
        protocol = "tcp"
        ports = ["22"]
    }

}
