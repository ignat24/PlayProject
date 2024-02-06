
resource "aws_security_group" "web-server-sg" {
  name = "web-server-sg-80"
  vpc_id = var.default_vpc
  ingress = [
      {
      description      = "http traffic"
      from_port        = 80
      to_port          = 80
      protocol         = "tcp"
      cidr_blocks      = ["0.0.0.0/0"]
      ipv6_cidr_blocks  = []
      prefix_list_ids   = []
      security_groups   = []
      self              = false
      }
  ]
  egress = [
    {
      from_port        = 0
      to_port          = 0
      protocol         = "-1"
      cidr_blocks      = ["0.0.0.0/0"]
      description      = "Outbound traffic rule"
      ipv6_cidr_blocks = []
      prefix_list_ids  = []
      security_groups  = []
      self             = false
    }
  ]
  tags = {
    project = "PlayGround"
  }
}

#resource "aws_network_interface" "web_net_interface" {
#  subnet_id = "subnet-2c627a45"
#  security_groups = [aws_security_group.web-server-sg.id]
#}
#


resource "aws_instance" "web_server" {
  ami = var.ami
  instance_type = var.instance_type
  availability_zone = var.availability_zone
  user_data = file("./user_data.sh")
  key_name = "server_aws"
}