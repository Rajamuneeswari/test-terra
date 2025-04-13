variable "ec2_ami_id" {
    description = "AMI ID"
    type = string
    default = "ami-079b5e5b3971bd10d"
}

variable "ec2_instance_count" {
    description = "Instace count"
    type = number
    default = 1
}

variable "aws_regions_mumbai" {
    description = "Region"
    type = string
    default = "ap-south-1"
}

variable "ec2_instance_type" {
    description = "Instance Type"
    type = string
    default = "t2.micro"
}