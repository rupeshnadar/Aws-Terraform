resource "aws_instance" "web" {
# Amazon Linux 2 AMI (HVM)
  ami = "ami-08e0ca9924195beba"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.Lin_Access.id]

  tags = {
    Name = "Linux"
  }
}

resource "aws_instance" "win" {
#  Microsoft Windows Server 2012 R2 Base
  ami = "ami-0a684c755f03261bb"
  instance_type = "t2.micro"
  key_name = "terraform"
  vpc_security_group_ids = [aws_security_group.Win_Access.id]

  tags = {
    Name = "Windows"
  }
}
