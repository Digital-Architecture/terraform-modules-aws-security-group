# Terraform Modules AWS

Repository Terraform Modules

```shell
AWS Security Group
```

### Requisites

The programs and softwares that need to install in your host:

- docker
- git

### Setup
```shell

module "sg-example" {

    source = "."

    name_security_group     = ""
    vpc_id                  = ""
    tags                    = ""

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

```
### Infra as Code
```shell
Terraform
Version: v.1.3.2
```

### Repository
```shell
Github
```

### Versions 
```shell
Version: v.0.0.1
```

### Contributing
#### NTTDATA - DIGITAL ARCHITECTURE
```shell
Author:  
Date: 
```

### Licensing
```shell
NTTDATA 
© Copyright NTT DATA Corporation
https://www.nttdata.com/global/en/
```
