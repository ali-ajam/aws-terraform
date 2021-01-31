# Designate a cloud provider, region, and credentials
provider "aws" {
  region = "us-east-1"
}


# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  ami = "ami-047a51fa27710816e"
  instance_type = "t2.micro"
  subnet_id = "subnet-d8ba3bbe"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}


# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  ami = "ami-047a51fa27710816e"
  instance_type = "m4.large"
  subnet_id = "subnet-d8ba3bbe"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}