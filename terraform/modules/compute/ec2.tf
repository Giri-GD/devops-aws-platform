resource "aws_instance" "jenkins" {

  ami           = "ami-0f5ee92e2d63afc18"
  instance_type = "t2.micro"

  subnet_id = var.subnet_id

  tags = {
    Name = "jenkins-server"
  }

}
