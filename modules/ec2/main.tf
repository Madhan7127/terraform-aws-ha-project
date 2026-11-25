
# EC2 Launch Template
resource "aws_launch_template" "web" {
  name = "${var.project_name}-web-launch-template"

  image_id      = var.ami_id
  instance_type = var.instance_type

  vpc_security_group_ids = [
    var.web_security_group_id
  ]

  user_data = base64encode(<<-EOF
    #!/bin/bash
    dnf update -y
    dnf install -y httpd
    systemctl enable httpd
    systemctl start httpd
    echo "<h1>Welcome to Spidy Tech - Highly Available AWS Project</h1>" > /var/www/html/index.html
  EOF
  )

  metadata_options {
    http_endpoint = "enabled"
    http_tokens   = "required"
  }

  tag_specifications {
    resource_type = "instance"

    tags = merge(var.common_tags, {
      Name = "${var.project_name}-web-server"
    })
  }

  tags = merge(var.common_tags, {
    Name = "${var.project_name}-web-launch-template"
  })
}

# Auto Scaling Group
resource "aws_autoscaling_group" "web" {
  name = "${var.project_name}-web-asg"

  min_size         = var.min_size
  desired_capacity = var.desired_capacity
  max_size         = var.max_size

  vpc_zone_identifier = var.public_subnet_ids

  target_group_arns = [
    var.target_group_arn
  ]

  launch_template {
    id      = aws_launch_template.web.id
    version = "$Latest"
  }

  health_check_type         = "ELB"
  health_check_grace_period = 300

  tag {
    key                 = "Name"
    value               = "${var.project_name}-web-asg-instance"
    propagate_at_launch = true
  }

  dynamic "tag" {
    for_each = var.common_tags

    content {
      key                 = tag.key
      value               = tag.value
      propagate_at_launch = true
    }
  }
}
