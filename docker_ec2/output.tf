output "aws_instance_public_ip" {
  value = aws_instance.docker_ec2_instance.public_ip
}