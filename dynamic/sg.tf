resource "aws_security_group" "allow_ssh_terraform" {
    name = "allow_ssh" 
    description = "Allow port number 22 for SSH access"
    
    # usually we allow in egress and its outgoing traffic
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }
    # terrafrom will give us a variable with block name
    dynamic "ingress" {
        for_each = var.ingress_rules
        content {
            from_port        = ingress.value["from_port"]
            to_port          = ingress.value["to_port"]
            protocol         = ingress.value["protocol"]
            cidr_blocks      = ingress.value["cidr_blocks"]
        }
  }
    tags = {
      Name = "allow_ssh_sg"
  }
}