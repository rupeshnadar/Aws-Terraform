resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_vpc
  tags = {
    Environment = "${var.environment_tag}"
  }
}

resource "aws_subnet" "subnet_public" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = var.cidr_subnet
  map_public_ip_on_launch = "true"
  tags = {
    Environment = "${var.environment_tag}"
  }
}
