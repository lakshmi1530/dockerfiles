data "aws_ami" "docker" {
    most_recent      = true
    owners           = ["973714476881"]
  filter {
    name   = "name"
    values = ["Redhat-9-DevOps-Practice"]
  }

  filter{
    name = "virtualization-type"
    values = ["hvm"]
  }

  filter {
    name = "image-id"
    values = ["ami-0220d79f3f480ecf5"]
  }
 
}