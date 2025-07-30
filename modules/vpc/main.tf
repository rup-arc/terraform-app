resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "public" {
  count = 2
  cidr_block = "10.0.${count.index + 1}.0/24"
  vpc_id = aws_vpc.main.id
  availability_zone = "us-east-1${["a", "b"][count.index]}"
  map_public_ip_on_launch = true
}

resource "aws_subnet" "private" {
  count = 2
  cidr_block = "10.0.${count.index + 3}.0/24"
  vpc_id = aws_vpc.main.id
  availability_zone = "us-east-1${["a", "b"][count.index]}"
}