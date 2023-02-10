terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-east-1"
}

resource "aws_instance" "target_debian" {
  ami           = "ami-0fec2c2e2017f4e7b"
  instance_type = "t2.micro"
  key_name      = "iac-alura"
  tags = {
    Name = "Aqualung-01"
  }
}

resource "aws_instance" "target_redhat" {
  ami           = "ami-0c9978668f8d55984"
  instance_type = "t2.micro"
  key_name      = "iac-alura"
  tags = {
    Name = "Aqualung-02"
  }
}

resource "aws_instance" "target_windows" {
  ami           = "ami-03cf1a25c0360a382"
  instance_type = "t2.small"
  key_name      = "iac-alura"
  tags = {
    Name = "Aqualung-03"
  }
}