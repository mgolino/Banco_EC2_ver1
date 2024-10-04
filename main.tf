resource "aws_instance" "Windows-MPG-Server" {
  # count = 1 # Number of instances to create
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-0baaac8c622257ef8"
#  ami           = "ami-03db23f7d74959cbb"
#  instance_type = "t2.small"

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Environment = "Dev"
#     Name = "Server ${count.index}"
  }
}
