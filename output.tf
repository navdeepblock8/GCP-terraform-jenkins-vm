output "instance_name" {
  value = "${google_compute_instance.vm_instance.name}"
}

output "instance_ip" {
  value = "${google_compute_address.static.address}"
}