provider "google" {
    credentials = ""
    project = "${var.project_name}"
    region = "${var.region_name}"
    zone = "${var.zone_name}"
}

terraform{
    required_version = "~>0.12.0"
}
