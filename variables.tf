variable "instance_type" {
  type = string
  description = "Type of EC2 instance to provision"
  default     = "t2.medium"
}

variable "ami" {
  type = string
  default = "ami-03db23f7d74959cbb"
  }
