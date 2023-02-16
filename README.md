# Terraform Module for AWS Internet Gateway


## Getting Started

This module is intended to create an AWS Route 53 Zone

Resources
- aws_internet_gateway


### Prerequisites

Terraform ~> 1.3.0

### Tested

Terraform ~> 1.3.7
### Installing

This module should be called by a terraform environment configuration
```  
    source  =   "git@github.com:sce81/aws-tf-module-igw.git"
```

##### Usage

    module "route53_zone" {
        source = "git@github.com:sce81/terraform-module-r53-zone.git"
        name   = "example.com"
        vpc_id = module.vpc.vpc_id
    }


addional tags can be appended using the following map values

        extra_tags


### Outputs

The following values are outputted

  zoneid = aws_route53_zone.primary.zone_id

