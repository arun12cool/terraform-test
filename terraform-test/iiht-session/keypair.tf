
  resource "aws_key_pair" "key" {
  key_name   = "iiht-demo1"
  public_key = file("~/.ssh/id_rsa.pub")
}

