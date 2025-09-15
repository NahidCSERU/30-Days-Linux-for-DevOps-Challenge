provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_lab" {
  ami           = "ami-0c55b159cbfafe1f0" # Ubuntu 20.04 LTS
  instance_type = "t2.micro"
  key_name      = "my-key"                # আপনার AWS key pair নাম

  tags = {
    Name = "devops-lab-ec2"
  }
}

output "public_ip" {
  value = aws_instance.devops_lab.public_ip
}
