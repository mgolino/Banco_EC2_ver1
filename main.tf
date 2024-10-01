resource "aws_instance" "Windows-MPG-Server" {
#  ami           = var.ami
#  instance_type = var.instance_type
  ami           = "ami-03db23f7d74959cbb"
  instance_type = "t2.small"

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Name = "Windows-MPG-Server"
  }
}
