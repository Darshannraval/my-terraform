resource "aws_subnet" "Private_Primary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_primary_subnet
  availability_zone = "us-east-2a"

  tags = {
    Name = "Private_Primary"
  }
}

resource "aws_subnet" "Private_Secondary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_secondary_subnet
  availability_zone = "us-east-2b"

  tags = {
    Name = "Private_Secondary"
  }
}

resource "aws_subnet" "Private_Tertiary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.private_tertiary_subnet
  availability_zone = "us-east-2c"

  tags = {
    Name = "Private_Tertiary"
  }
}
resource "aws_subnet" "Public_Primary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_primary_subnet
  availability_zone = "us-east-2a"

  tags = {
    Name = "Public_Primary"
  }
}
resource "aws_subnet" "Public_Secondary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_secondary_subnet
  availability_zone = "us-east-2b"

  tags = {
    Name = "Public_Secondary"
  }
}
resource "aws_subnet" "Public_Tertiary" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.public_tertiary_subnet
  availability_zone = "us-east-2c"

  tags = {
    Name = "Public_Tertiary"
  }
}