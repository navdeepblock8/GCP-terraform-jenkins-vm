resource "google_compute_instance" "vm_instance" {
name = "terraform-instance"
machine_type = "${var.machine_size}"

boot_disk{
    initialize_params {
        image = "${var.image_name}"
    }
}

network_interface{
    network = "default"

    access_config {
        nat_ip= google_compute_address.static.address
    }
}
/*metadata = {
  ssh-keys = "debian:{file(var.ssh_public_key)}"
}
provisioner "remote-exec"{
    script= "${var.script_path}"
    connection {
         type = "ssh"
         host = google_compute_address.static.address
         user = "debian"
         private_key = file(var.ssh_private_key)

}
}*/
    tags = ["https-server"]
}
resource "google_compute_firewall" "http-server" {
  name = "jenkins-network"
  network = "default"
  priority = "76"
  allow {
      protocol = "icmp"
  }
  allow{
      protocol = "tcp"
      ports = ["8080"]
  }

  source_ranges =["0.0.0.0/0"]
  target_tags = ["http-server"]
}


resource "google_compute_address" "static" {
  name = "ipvaddress"
}

