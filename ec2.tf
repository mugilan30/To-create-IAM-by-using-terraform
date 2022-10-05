provider "aws" {
   region = "ap-south-1"
}

resource "aws_instance" "web" {
 ami           = "${data.aws_ami.ubuntu.id}"
 instance_type = "t2.micro"
 iam_instance_profile = "${aws_iam_instance_profile.ec2_profile.name}"
 
 tags = {
   Name = "HelloWorld"
 }
} 