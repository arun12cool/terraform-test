resource "aws_internet_gateway" "gw" {
  vpc_id = "vpc-0dc3c5e0379c9571d"

  tags = {
    Name = "main"
  }
}




resource "aws_security_group" "allow_tls" {
  count = 2  
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = "vpc-0dc3c5e0379c9571d"

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["172.31.0.0/16"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "allow_tls"
  }
}


