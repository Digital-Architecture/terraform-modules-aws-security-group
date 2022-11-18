# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci 
# Date: Qui, 17 Nov 2022


resource "aws_security_group_rule" "sg_rules" {

    count               = length(var.sg_rules)

    type                = var.sg_rules[count.index].type
    from_port           = var.sg_rules[count.index].from_port
    to_port             = var.sg_rules[count.index].to_port
    protocol            = var.sg_rules[count.index].protocol
    cidr_blocks         = [var.sg_rules[count.index].cidr_blocks]
    description         = var.sg_rules[count.index].description
    security_group_id   = aws_security_group.security_group.id
  
}