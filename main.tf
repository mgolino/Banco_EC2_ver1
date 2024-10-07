resource "aws_instance" "Windows-MPG-Server" {
  # count = 1 # Number of instances to create
  ami           = var.ami
  instance_type = var.instance_type
#  root_volume_encryption_enabled = true
#  volume_encryption_key = "arn:aws:kms:us-east-1:222634369789:key/mrk-435ef7d1448341e784453f666cf0f1da"
  subnet_id = "subnet-0baaac8c622257ef8"
#  ami           = "ami-03db23f7d74959cbb"
#  instance_type = "t2.small"

  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Environment = "Dev"
    Name = var.tag_name
#     Name = "Server ${count.index}"
  }
}

resource "aws_ebs_default_kms_key" "default" { 
key_arn = arn:aws:kms:us-east-1:222634369789:key/mrk-435ef7d1448341e784453f666cf0f1da 
}
