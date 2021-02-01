resource "aws_security_group" "Lin_Access" {
  name = "Lin_Access"
  description = "Allow SSH & ICMP Traffic"

  ingress {
    description = "SSH Access"
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
      description = "ICMP Access"
      from_port = -1
      to_port = -1
      protocol = "icmp"
      cidr_blocks = ["0.0.0.0/0"]
  }
 
  egress {
    description   = "Outgoing Open"
    from_port     = 0
    to_port       = 0
    protocol      = -1
    cidr_blocks = ["0.0.0.0/0"]
  }
 
  tags = {
    Name = "Linuz"
  }
}

resource "aws_security_group" "Win_Access" {
  name        = "Win_Access"
  description = "Allow RDP & ICMP Traffic"
 
  ingress {
    description = "RDP Allowed"
    from_port   = 3389 #  By default, the windows server listens on TCP port 3389 for RDP
    to_port     = 3389
    protocol =   "tcp"
    cidr_blocks =  ["0.0.0.0/0"]
  }

  ingress {
    description   = "ICMP Allowed"
    from_port     = -1
    to_port       = -1
    protocol      = "icmp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    description   = "Outgoing Open"
    from_port     = 0
    to_port       = 0
    protocol      = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Windows"
  }
}
