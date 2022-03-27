provider "aws" {
  region = "us-west-2"
}


module "create-bucket" {
    source = "./modules"
    bucket_name = "iiht-test-1"
}

