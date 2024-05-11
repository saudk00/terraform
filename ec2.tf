resource "aws_instance" "vm1" {
  ami               = var.ami_id
  availability_zone = var.az 
  instance_type     = var.itype 
  key_name          = var.key
  vpc_security_group_ids = [
    "sg-03f138a7ba611c349",
    "sg-06d5626abf5198b81",
    aws_security_group.tfsg1.id
  ]
  depends_on = [aws_security_group.tfsg1]

  tags = {
    Name = var.ec2name
    iac  = "terraform"
  }
}

resource "aws_ec2_instance_state" "vm1state" {
  instance_id = aws_instance.vm1.id
  state = "stopped"
}

resource "aws_security_group" "tfsg1" {
  name        = "https"
  description = "allow https"
  vpc_id      = "vpc-00a0c1e35e30455e9"

  ingress {
    from_port   = "443"
    to_port     = "443"
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow inbound https"
  }
  egress {
    from_port   = "0"
    to_port     = "0"
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
    description = "allow all outbound"
  }
}