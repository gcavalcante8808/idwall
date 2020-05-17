variable "region" {
    type = string
    default = "us-central1"
}

variable "zone" {
    type = string
    default = "us-west1-a"
}

variable "ssh-authorized-ip" {
    type = string
}

provider "google" {
  credentials   = "${file("account.json")}"
  project       =  "idwall-challenge"
  region        =  var.region
  zone          =  var.zone
}
