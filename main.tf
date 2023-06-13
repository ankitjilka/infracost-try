provider "aws" {
  region = "us-east-1"  # Set your desired region
  access_key = "AKIA6G5FQXIEW5TI5WAK"
  secret_key = "0IAPiOWOARTadU1ZJAMrFVtJSVyziaxONl+KkC7Y"
}

resource "aws_instance" "example_instance" {
  ami           = "ami-053b0d53c279acc90"  # Set the desired AMI ID
  instance_type = "t3.micro"                # Set the desired instance type


  root_block_device {
    volume_size = 46  # Specify the desired root volume size in GB
    volume_type = "gp2"  # Specify the desired EBS volume type
  }

  tags = {
    Name        = "Example Instance"
    Environment = "Development"
  }
}
