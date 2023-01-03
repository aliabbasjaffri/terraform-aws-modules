resource "aws_route53_zone" "public" {
  name = var.domain
  tags = {
    Name          = "${var.env_name}"
    "environment" = var.env_name
  }
  force_destroy = true
}