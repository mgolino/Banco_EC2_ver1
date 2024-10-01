resource "aws_instance" "Windows-MPG-Server" {
  ami           = var.ami
  instance_type = var.instance_type

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = "Windows-MPG-Server"
  }
}
