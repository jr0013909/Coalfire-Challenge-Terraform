resource "aws_instance" "windows_instance" {
  ami                         = var.ami_id[0]
  instance_type               = var.instance_type[0]
  monitoring                  = false
  key_name                    = var.key_name
  user_data                   = data.template_file.windows.rendered
  subnet_id                   = var.public_subnets[0]
  vpc_security_group_ids      = [var.vm_security_group]
  associate_public_ip_address = true

  root_block_device {
    encrypted             = "false"
    volume_type           = "gp2"
    volume_size           = var.volume_size[0]
    delete_on_termination = true
  }

  tags = {
    Name = "Windows-Server-2019"
  }

}
resource "aws_eip" "instance_ip" {}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.windows_instance.id
  allocation_id = aws_eip.instance_ip.id
}

resource "aws_instance" "redhat_instance01" {
  ami                         = var.ami_id[1]
  instance_type               = var.instance_type[1]
  monitoring                  = false
  key_name                    = var.key_name
  user_data                   = data.template_file.redhat01.rendered
  subnet_id                   = var.public_subnets[1]
  vpc_security_group_ids      = [var.vm_security_group]
  associate_public_ip_address = true

  root_block_device {
    encrypted             = "false"
    volume_type           = "gp2"
    volume_size           = var.volume_size[1]
    delete_on_termination = true
  }

  tags = {
    Name = "RedHat-wpserver1"
  }
}
resource "aws_instance" "redhat_instance02" {
  ami                         = var.ami_id[1]
  instance_type               = var.instance_type[1]
  monitoring                  = false
  key_name                    = var.key_name
  user_data                   = data.template_file.redhat02.rendered
  subnet_id                   = var.public_subnets[2]
  vpc_security_group_ids      = [var.vm_security_group]
  associate_public_ip_address = true

  root_block_device {
    encrypted             = "false"
    volume_type           = "gp2"
    volume_size           = var.volume_size[1]
    delete_on_termination = true
  }

  tags = {
    Name = "RedHat-wpserver2"
  }
}
