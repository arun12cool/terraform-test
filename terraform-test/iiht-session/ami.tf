resource "aws_ami" "ec2-ami" {
  name                = "terraform-ami"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-09d03ded0492be868"
    volume_size = 8
  }
}