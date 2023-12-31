#Create Route Table

resource "aws_route_table" "route" {
vpc_id = "${aws_vpc.mainvpc.id}"
route {
cidr_block = "0.0.0.0/0"
gateway_id = "{aws_internet_gateway.MyIgw.id}"
}
tags = {
Name = "my-pub-rt"
}
}


#Route  table associtation for public subnet_1 

resource "aws_route_table_association" "rt1"{
subnet_id = "${aws_subnet.MyPubSn-1.id}"
route_table_id = "${aws_route_table.route.id}"
}

#Route  table associtation for public subnet_2

resource "aws_route_table_association" "rt2"{
subnet_id = "${aws_subnet.MyPubSn-2.id}"
route_table_id = "${aws_route_table.route.id}"
}


