provider "aws" {
  region = var.region
}

resource "aws_instance" "devops_ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type

  tags = {
    Name = "Terraform-EC2-Variable"
  }
}