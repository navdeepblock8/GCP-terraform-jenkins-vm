variable "project_name" {
    type = "string"
    description = "The name of the project to run the instance at."
    default = "helpterraform" 
}
variable "region_name" {
    type = "string"
    description = "This is the region for instance to run"
    default = "asia-east2"
}

variable "zone_name" {
  type = "string"
  description = "The zone that will run the instance in the region"
  default = "asia-east2-a"
}

variable "machine_size" {
  type = "string"
  description = "The kind of machine we want to run"
  default = "n1-standard-2"
}
variable "image_name" {
  type = "string"
  description = "the kind of os we want run on vm"
  default = "jenkins-docker-image"
}
/*variable "script_path" {
    type = "string"
    description = "The path for the script we want to run on machine"
  }
variable "private_key_path" {
 type = "string"
 description = "The path to private key used to connect to the instance" 
}
variable "username" {
  type = "string"
  description = "The name of the user that will be used to remote exec the script"
}

variable "ssh_public_key" {
  type ="string"
  description = "Filepath for the ssh public key"
  default = ""
}

variable "ssh_private_key" {
  type ="string"
  description = "Filepath for the ssh public key"
  default = ""
}*/



