provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "terrform-instance-1" {
  ami = "ami-013e83f579886baeb"
  instance_type = "t2.micro"
  key_name = "jenkins"
  tags = {
    Name  = "my-ec2-instance-1"
    appid = "345"
    env   = "dev"
  }
  availability_zone = "ap-south-1a"
}
