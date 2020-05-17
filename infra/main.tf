variable "region" {
    type = string
    default = "us-central1"
}

variable "ssh-authorized-ip" {
    type = string
}

provider "google" {
  credentials   = "${file("account.json")}"
  project       =  "idwall-challenge"
  region        =  var.region
}
