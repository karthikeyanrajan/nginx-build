






// Create a route table 
resource "aws_route_table" "karthikeyan-public-rt" {
    vpc_id = "${aws_vpc.karthikeyan-vpc.id}"
    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = "${aws_internet_gateway.karthikeyan-igw.id}"
    }
    tags = {
      Name = "karthikeyan-public-rt"
    }
}

// Associate subnet with routetable 

resource "aws_route_table_association" "karthikeyan-rta-public-subent-1" {
    subnet_id = "${aws_subnet.karthikeyan-public_subent_01.id}"
    route_table_id = "${aws_route_table.karthikeyan-public-rt.id}"
  
}