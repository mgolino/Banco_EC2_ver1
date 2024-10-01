variable "instance_type" {
  type = string
  description = "Type of EC2 instance to provision"
  default     = "t2.medium"
}

variable "ami" {
  type = string
  description = "What AMI do I want to launch"
  default = "ami-03db23f7d74959cbb"
  }
