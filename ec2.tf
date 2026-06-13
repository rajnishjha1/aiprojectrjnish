resource "aws_instance" "web" {

  ami           = "ami-0521cb2d60cfbb1a6"

  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2"
  }
}