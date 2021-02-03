# VPC
resource "aws_vpc" "vpc" {
  cidr_block = var.cidr_vpc
  tags = {
    Name = "VPC - Terraform"
  }
}

# Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = "aws_vpc.vpc"
  tags = {
    Name = "IGW - Terraform"
  }
}

# Subnet - Public
resource "aws_subnet" "subnet_public" {
  count             = length(var.cidr_subnet)
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = element(var.cidr_subnet, count.index)
  availability_zone = element(var.az, count.index)
  #  map_public_ip_on_launch = "true"
  tags = {
    Name = "Subnet-$(count.index+1)"
  }
}

# Route Table - Internet Gateway
resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags = {
    Name = "Public Route Table"
  }
}

# Route Table Association with Public Subnet
resource "aws_route_table_association" "rta" {
  count          = length(var.cidr_subnet)
  subnet_id      = element(aws_subnet.subnet_public.*.id, count.index)
  route_table_id = aws_route_table.public_rt.id
}
