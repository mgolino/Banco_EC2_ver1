variable "instance_type" {
  type = string
  description = "Type of EC2 instance to provision"
  default     = "t2.medium"
}

variable "ami" {
  type = string
  description = "What AMI do I want to launch"
  default = "ami-0fff1b9a61dec8a5f"
  }
