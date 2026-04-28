provider "aws" {
    region = "ap-south-1"
  
}

variable "ami" {
    description = "This is ami"
  
}

variable "instance_type" {
    description = "This is instance"
  
}
resource "aws_instance" "pkinstance" {
    ami = var.ami
    instance_type = var.instance_type
  
}
