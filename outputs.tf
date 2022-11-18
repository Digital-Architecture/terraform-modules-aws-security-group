# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci 
# Date: Qui, 17 Nov 2022

output "security_group_id" {

    description = "AWS Security Group ID"
    value = aws_security_group.security_group.id
}