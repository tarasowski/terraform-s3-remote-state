terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "example_instance" {
  ami           = var.image_id
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}
