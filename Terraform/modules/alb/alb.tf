resource "aws_lb" "alb" {
  name                       = "alb"
  internal                   = false
  load_balancer_type         = "application"
  security_groups            = [var.alb_security_group]
  subnets                    = var.alb_public_subnets
  enable_deletion_protection = false
}

resource "aws_lb_target_group" "alb-tg" {
  name     = "tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = var.alb_vpc_id

  deregistration_delay = 20
  target_type          = "instance"

  health_check {
    path                = "/"
    port                = 80
    healthy_threshold   = 6
    unhealthy_threshold = 2
    timeout             = 2
    interval            = 5
    matcher             = "200" # has to be HTTP 200 or fails
  }
}


# HTTP to HTTPS tranlation
resource "aws_alb_listener" "http" {
  load_balancer_arn = aws_lb.alb.arn
  port              = 80
  protocol          = "HTTP"

  default_action {
    target_group_arn = aws_lb_target_group.alb-tg.arn
    type             = "forward"
  }
}

resource "aws_alb_target_group_attachment" "instance_attachment" {
  target_group_arn = aws_lb_target_group.alb-tg.arn
  target_id        = var.target_id
}


