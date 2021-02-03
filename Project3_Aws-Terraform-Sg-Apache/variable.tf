variable "az" {
  description = "Availability Zone"
  default     = "ap-south-1a"
}

variable "instance_ami" {
  description = "Amazon Linux 2 AMI (HVM), SSD Volume Type"
  default     = "ami-08e0ca9924195beba"
}

variable "instance_type" {
  description = "AWS EC2 Instance"
  default     = "t2.micro"
}

