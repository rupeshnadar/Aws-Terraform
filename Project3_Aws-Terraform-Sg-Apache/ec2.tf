resource "aws_instance" "webserver" {
  ami                    = var.instance_ami
  instance_type          = var.instance_type
  vpc_security_group_ids = ["${aws_security_group.sg.id}"]
  user_data              = file("install_apache.sh")
  tags = {
    Environment = var.environment_tag
  }
}
output "ec2-pub-ip" {
  value = aws_instance.webserver.public_ip
}
