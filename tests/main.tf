# NTTDATA - DIGITAL ARCHITECTURE
# Create: Marcos Cianci 

module "sg-example" {

    source = "../"

    name_security_group     = "foo"
    vpc_id                  = var.vpc_id
    tags                    = var.tags 

    sg_rules                = [
        {
            type            = "ingress"  # ingress/egress
            from_port       = 443
            to_port         = 443
            protocol        = "tcp"      # tcp/udp 
            cidr_block      = "0.0.0.0/0"
            description     = "Allow HTTPS"  
        }
    ]
}
