
//Creating a Internet Gateway 
resource "aws_internet_gateway" "karthikeyan-igw" {
    vpc_id = "${aws_vpc.karthikeyan-vpc.id}"
    tags = {
      Name = "karthikeyan-igw"
    }
}