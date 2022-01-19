provider "aws" {
  region  = "us-east-2"
  shared_credentials_file = "/home/richard/.aws/credentials"
  profile = "default"
}

resource "aws_instance" "SuperMario" {
  ami = "ami-0443305dabd4be2bc"
  instance_type = "t2.micro"
  key_name = "Richard"
  user_data = "${file("terraformando.sh")}"
  vpc_security_group_ids = ["sg-070952e67c3a78d43"]
  tags = {
    Name = "SuperMario"
  }
}


