resource "aws_route53_zone" "primary" {
  name    = var.name
  comment = "${var.name} ${var.visibility} hosted zone"
  vpc {
    vpc_id = var.vpc_id
  }
  tags = merge(
    var.extra_tags,
    tomap({
      Name = "${var.name} ${var.visibility} hosted zone"
    })
  )
}