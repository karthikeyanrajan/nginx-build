
//creating a VPC
resource "aws_vpc" "karthikeyan-vpc" {
    cidr_block = var.vpc_cidr
    tags = {
      Name = "karthikeyan-vpc-vpc"
    }
  
}