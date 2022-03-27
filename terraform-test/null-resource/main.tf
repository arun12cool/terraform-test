resource "null_resource" "sample" {
  provisioner "local-exec" {
    command = "aws s3 ls --no-verify-ssl"
 }
}
