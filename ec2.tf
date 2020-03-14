provider "aws" {
access_key = "AKIA43WVSTYO3F7DC53R"
secret_key = "6GiPRRX5bBqoqSmdh4WOdf+zanqYaFNE24Z0ziWf"
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
