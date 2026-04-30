resource "aws_instance" "docker_ec2_instance" {
  ami           = local.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [aws_security_group.allow_all.id] #first it will run the dependencies automatically
  root_block_device {
      volume_size = var.aws_volume_size
      volume_type = "gp3"
    }
  tags = merge(
    local.local_tags, 
  {
    Environment = "Development"
  }
  )
    user_data = <<-EOF
              #!/bin/bash
              sudo dnf update -y
              sudo dnf install -y docker
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo usermod -aG docker $ec2-user
            EOF
}
resource "aws_security_group" "allow_all" {
    name        = "allow_all_docker_ec2_sg"
    description = "Allow all inbound and outbound traffic for Docker EC2 Instance"
    
        ingress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        }
        egress {
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        }  
}