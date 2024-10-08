
data "aws_ebs_default_kms_key" "ebs_kms_key" {}
data "aws_security_group" "MPG-SG" {}
data "aws_ami" "windows" {
  most_recent = true

filter {
  name = "platform"
  values = ["windows"]
  }
filter {
  name = "name"
  values = ["Windows_Server-2022-English-Full-Base-2024.09*"]
  }
  owners = ["amazon"]
}

resource "aws_instance" "Windows-MPG-Server" {
  # count = 1 # Number of instances to create
#  ami           = var.ami
  ami = data.aws_ami.windows.id
  instance_type = var.instance_type
  key_name = "MPG-Server"
  security_groups = data.aws_security_group.MPG-SG.name
  subnet_id = "subnet-0ba3d6a676259e6f7"
  availability_zone = "us-east-1b"
#  ami           = "ami-03db23f7d74959cbb"
#  instance_type = "t2.small"
  root_block_device {
    volume_type = "gp2"
    volume_size = 200
    encrypted   = true
    kms_key_id  = data.aws_ebs_default_kms_key.ebs_kms_key.key_arn
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

