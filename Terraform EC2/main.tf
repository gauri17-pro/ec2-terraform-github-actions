provider "aws" {
  region = var.region
}

resource "aws_instance" "my_instance" {
  ami           = var.ec2_ami
  instance_type = var.instance_type
  vpc_security_group_ids = [aws_security_group.sg.id]
  key_name = "jenkins-key"
  tags = {
    "Name" = "MyInstance"
  }
}

resource "aws_security_group" "sg" {
  name = "linux-sg"
  description = "Security group for the linux instance"

  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}