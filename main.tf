# launching a VPC in us-west-2 as well as an Amazon linux 2 EC2 in the default VPC in us-west-2
resource "aws_vpc" "custom_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "Custom_vpc"
  }
}

resource "aws_instance" "amazon_webserver" {
  ami           = "ami-02b297871a94f4b42"
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}
