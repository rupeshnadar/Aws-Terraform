resource "aws_instance" "dmz" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  subnet_id              = aws_subnet.subnet_public.id
  key_name               = aws_key_pair.sshkey.key_name

  tags = {
    Environment = var.environment_tag
  }
}

