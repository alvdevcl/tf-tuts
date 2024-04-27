provider "aws" {
  region = var.region

}

resource "aws_instance" "my_vm" {
 ami           = data.aws_ami.amazon_linux.id
 instance_type = var.instance_type

 tags = {
   Name = var.name_tag,
 }
}

