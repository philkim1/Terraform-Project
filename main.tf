# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
    access_key = "AKIAYEDW2GMYQ23JQKTM"
    secret_key = ""
    region = "us-east-1"
}

# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "backend1" {
    count = 4
    ami = "ami-066784287e358dad1"
    instance_type = "t2.micro"
    tags = {
        name = "udacity T2"
    }
}

# TODO: provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "backend2" {
    count = 2
    ami = "ami-066784287e358dad1"
    instance_type = "m4.large"
    tags = {
        name = "udacity M4"
    }
}