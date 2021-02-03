variable "az" {
  description = "Availability Zone"
  type        = list(string)
  default     = ["ap-south-1a", "ap-south-1b"]
}

variable "cidr_vpc" {
  description = "VPC CIDR Block"
  default     = "10.1.0.0/16"
}

variable "cidr_subnet" {
  description = "Subnet CIDR Block"
  type        = list(string)
  default     = ["10.1.1.0/24", "10.1.2.0/24"]
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

