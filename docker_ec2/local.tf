locals {
  ami_id= data.aws_ami.docker.id
  local_tags = {
    Name = "Docker"
    Developer = "Lakshmi"
    Description = "This EC2 instance is created using Terraform to run Docker containers."
  }
}