provider "aws" {
  region = "us-east-2"
  #access_key = ""
  #secret_key = ""
}
resource "aws_instance" "intro" {
  ami = "ami-0f9ce67dcf718d332"
  instance_type = "t2.micro"
  availability_zone = "us-east-2a"
  key_name = "dove-key"
  vpc_security_group_ids = ["sg-01e8118059c85eb86"]
  tags = {
    Name = "Dove-instance"
  }
}