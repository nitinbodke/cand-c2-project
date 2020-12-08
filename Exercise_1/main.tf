provider "aws" {
  profile = "sa"
  region  = "us-east-1"
}

resource "aws_instance" "UdacityT2" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  subnet_id     = "subnet-083a9aa6ff2481ec8"
  count         = 4
  tags = {
    Name = "Udacity T2"
  }
}
//
//resource "aws_instance" "UdacityM4" {
//  ami           = "ami-04d29b6f966df1537"
//  instance_type = "m4.large"
//  subnet_id     = "subnet-083a9aa6ff2481ec8"
//  count         = 2
//  tags = {
//    Name = "Udacity M4"
//  }
//}