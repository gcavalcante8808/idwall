resource "google_compute_firewall" "default" {
    name = "idwall-firewall"
    network = "default"
    
    allow {
        protocol = "tcp"
        ports = ["80","443"]
    }
}
