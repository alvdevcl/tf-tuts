
# Get latest Windows Server 2016 AMI
data "aws_ami" "windows-2016" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2016-English-Full-Base*"]
  }
}
# Get latest Windows Server 2019 AMI
data "aws_ami" "windows-2019" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2019-English-Full-Base*"]
  }
}
# Get latest Windows Server 2022 AMI
data "aws_ami" "windows-2022" {
  most_recent = true
  owners      = ["amazon"]
  filter {
    name   = "name"
    values = ["Windows_Server-2022-English-Full-Base*"]
  }
}



data "aws_ami" "latest_amazon_linux" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type (first line of Amazon Linux AMI)
    # values = ["amzn2-ami-kernel-5*-x86_64-gp2"]

    # Amazon Linux 2 AMI (HVM) - Kernel 4.14, SSD Volume Type (second line of Amazon Linux AMI)
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    # Amazon Linux 2 AMI (HVM) - Kernel 4.14, SSD Volume Type (second line of Amazon Linux AMI)
    # values = ["al2023-ami-2023.3.20240108.0-kernel-6*-x86_64"]
  }
}

data "aws_ami" "amazon_linux" {
  owners      = ["amazon"]
  most_recent = true

  filter {
    name = "name"
    # Amazon Linux 2 AMI (HVM) - Kernel 5.10, SSD Volume Type (first line of Amazon Linux AMI)
    values = ["amzn2-ami-kernel-5*-x86_64-gp2"]

    # Amazon Linux 2 AMI (HVM) - Kernel 4.14, SSD Volume Type (second line of Amazon Linux AMI)
    # values = ["amzn2-ami-hvm-*-x86_64-gp2"]
    # Amazon Linux 2 AMI (HVM) - Kernel 4.14, SSD Volume Type (second line of Amazon Linux AMI)
    # values = ["al2023-ami-2023.3.20240108.0-kernel-6*-x86_64"]
  }
}

