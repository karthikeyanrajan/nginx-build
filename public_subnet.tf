

// Creatomg a Subnet 
resource "aws_subnet" "karthikeyan-public_subent_01" {
    vpc_id = "${aws_vpc.karthikeyan-vpc.id}"
    cidr_block = var.subnet_cidr
    map_public_ip_on_launch = "true"
    availability_zone = "us-east-1a"
    tags = {
      Name = "karthikeyan-public_subent_01"
    }
  
}