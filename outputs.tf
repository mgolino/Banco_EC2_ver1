output "instance_ami" {
  value = aws_instance.Windows-MPG-Server.ami
}

output "instance_ip_addr" {
  value = aws_instance.Windows-MPG-Server.private_ip
  description = "The private IP address of the server"
}

output "instance_type" {
  value = aws_instance.Windows-MPG-Server.instance_type
}

output "instance_arn" {
  value = aws_instance.Windows-MPG-Server.arn
}

