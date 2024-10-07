
data "aws_ebs_default_kms_key" "current" {}

resource "aws_instance" "Windows-MPG-Server" {
  # count = 1 # Number of instances to create
  ami           = var.ami
  instance_type = var.instance_type
  subnet_id = "subnet-0baaac8c622257ef8"
#  ami           = "ami-03db23f7d74959cbb"
#  instance_type = "t2.small"
  root_block_device {
    volume_type = "gp2"
    volume_size = 200
    encrypted   = true
    kms_key_id  = data.aws_ebs_default_kms_key.current.key_arn
  }
  credit_specification {
    cpu_credits = "unlimited"
  }

  tags = {
    Environment = "Dev"
    Name = var.tag_name
#     Name = "Server ${count.index}"
  }
}


# key_arn = arn:aws:kms:us-east-1:222634369789:key/mrk-435ef7d1448341e784453f666cf0f1da 

