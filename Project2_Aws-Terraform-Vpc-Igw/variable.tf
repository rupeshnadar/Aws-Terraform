variable "cidr_vpc" {
  description = "VPC CIDR Block"
  default     = "10.1.0.0/16"
}

variable "cidr_subnet" {
  description = "Subnet CIDR Block"
  default     = "10.1.0.0/24"
}

variable "az" {
  description = "Availability Zone"
  default     = "ap-south-1a"
}

variable "public_key_path" {
  description = "Public Key Path"
  default     = "~/.ssh/id_rsa.pub"
}

variable "instance_ami" {
  description = "AMI"
  default     = "ami-08e0ca9924195beba"
}

variable "instance_type" {
  description = "AWS EC2 Instance"
  default     = "t2.micro"
}

