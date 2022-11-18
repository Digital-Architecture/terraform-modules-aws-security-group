# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci 
# Date: Qui, 17 Nov 2022


resource "aws_security_group" "security_group" {

    description = "AWS Security Group ${var.name_security_group}"
    name        = var.name_security_group
    vpc_id      = var.vpc_id

    tags        = merge( {"Name" = var.name_security_group}, var.tags)
}
