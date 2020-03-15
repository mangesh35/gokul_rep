provider "aws" {
access_key = "AKIAASDFASDFASDFASDFASDF7DC53R"
secret_key = "6GiPRRX5bBqoqSmdh4WOdf+zanqYaFNE2asdfasdfasdffdfd4Z0ziWf"
region = "us-east-1"
}

resource "aws_instance" "example" {
count = 2
ami = "ami-0fc61db8544a617ed"
instance_type = "t2.micro"
key_name = "mangesh-test"


 tags = {
	Name = "mangesh-${count.index + 1} "
	}

}
