provider "aws" {
  region = "ap-south-1"
  alias  = "Mumbai"
}
resource "aws_instance" "Tf-class1" {
  ami           = "ami-0e12ffc2dd465f6e4"
  instance_type = "t2.micro"
  provider = aws.mumbai
  tags = {
    Name     = "Tf-class1"
    TeamName = "Devops"
  }

}
