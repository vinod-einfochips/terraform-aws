terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a Instance
resource "aws_instance" "my_ec2_instance" {
  ami  = "ami-08a0d1e16fc3f61ea"
  instance_type = "t2.micro"
  tags = {
       Name = "Terraform-us"
}
}

output "ec2_public_ips" {
   value = aws_instance.my_ec2_instance.public_ip
}
