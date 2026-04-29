provider "aws" {
    region = "ap-south-1"
  
}

variable "ami" {
    description = "This is ami"
  
}

variable "instance_type" {
    description = "This is instance"
  
}

resource "aws_key_pair" "my_key" {
  key_name   = "my-ec2-key"
  public_key = file("/Users/pk/.ssh/my-ec2-key.pub")
}

resource "aws_instance" "pkinstance" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = aws_key_pair.my_key.key_name
  
}
