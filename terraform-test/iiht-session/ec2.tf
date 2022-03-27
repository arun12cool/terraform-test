resource "aws_instance" "web" {
  count = 2
  ami           = aws_ami.ec2-ami.id
  instance_type = "t2.micro"
  key_name = aws_key_pair.key.key_name

  tags = {
    Name = "IIHT-Test-2"


  }
  user_data = file("${path.module}/hello.sh")
  
  
}

output "ec2_id" {
  value = aws_instance.web[*].id

}

data "template_file" "init" {
  template = file("${path.module}/init.tpl")
  vars = {
    instance_state = "${aws_instance.web[0].instance_state}"
  }
  
}



