variable "instance_name" {
  description = "Name for the EC2 instance"
  type        = string
  default     = "example-instance"
}

variable "image_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-0005e0cfe09cc9050"
}


variable "aws_region" {
    description = "value for the aws region"
    type       = string
    default = "us-east-1"
}

variable "dynamodb_table_name" {
  description = "value for the dynamodb table name"
  type = string
  default = "terraform-state-lock"
}
