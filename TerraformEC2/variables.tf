variable "region" {
  type = string
  default = "us-east-1"
}

variable "ec2_ami" {
  type = string
  default = "ami-006dcf34c09e50022"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}