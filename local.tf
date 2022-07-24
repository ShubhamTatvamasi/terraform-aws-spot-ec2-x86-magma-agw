locals {
  region = "us-east-1"

  subnet_id     = "subnet-dff8f092" # us-east-1a
  instance_type = "t3a.medium"
  volume_size   = 50

  ami = "ami-085d9f55f64926838" # Linux kernal 5.4.0-1045-aws - Ubuntu 20.04 LTS - us-east-1

  tags = {
    Name        = "Magma AGW x86 - 5.4 Kernal"
    Environment = "dev"
  }
}
