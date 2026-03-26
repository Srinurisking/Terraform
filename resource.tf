resource "aws_instance" "myinsta" {
tags = {
Name = var.iname[count.index]
}
ami = "ami-0aaa636894689fa47"
instance_type = "t3.micro"
key_name = aws_key_pair.mykeypair.key_name
availability_zone = var.az[count.index]
count = length(var.iname)
vpc_security_group_ids = [aws_security_group.mysg.id]
}

resource "aws_key_pair" "mykeypair" {
key_name = "srinukeypair"
public_key = file("/root/.ssh/id_rsa.pub")
}
