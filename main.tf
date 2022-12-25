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
    profile = "default"
  region  = "us-west-2"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0530ca8899fac469f"
  instance_type = "t2.micro"
  key_name = "vitorDevops"

  tags = {
    Name = "Alura Instancia"
  }
}
