#Terraform Block
terraform {
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "3.50.0"
      }
    }
}

#Provider Block
provider "aws" {
  region = var.aws_regions_mumbai
  profile = "default"
}

#Resource Block
resource "aws_instance" "test-terra" {
  ami           = var.ec2_ami_id # Amazon Linux
  instance_type = var.ec2_instance_type
  count = var.ec2_instance_count
  tags = {
    "Name" = "test-terraformcloud"
  }

}
