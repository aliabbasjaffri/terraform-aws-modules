resource "aws_route53_zone" "public" {
  name = var.domain
  tags = {
    Name                               = "${var.module_prefix}-${var.env_name}"
    "${var.module_prefix}-environment" = var.env_name
  }
  force_destroy = true
}