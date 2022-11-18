# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci
# Date: Qui, 17 Nov 2022

variable "name_security_group" {

    description = "Name of Security Group"
    type        = string
}

variable "vpc_id" {

    description = "The VPC ID."
    type        = string
}

variable "sg_rules" {

    type = list(object({
        type        = string
        from_port   = number
        to_port     = number
        protocol    = string 
        cidr_blocks = string
        description = string
    }))
}

### TAGS ###

variable "tags" {}