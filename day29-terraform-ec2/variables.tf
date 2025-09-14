variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "ec2_name" {
  description = "Name of the EC2 instance"
  type        = string
  default     = "day29-linux-ec2"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI ID for Linux (Amazon Linux 2)"
  type        = string
  default     = "ami-0c55b159cbfafe1f0"
}
