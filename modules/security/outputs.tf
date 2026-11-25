output "alb_sg_id" {
  description = "ALB Security Group ID"
  value       = aws_security_group.alb_sg.id
}

output "web_sg_id" {
  description = "Web EC2 Security Group ID"
  value       = aws_security_group.web_sg.id
}

output "ssh_sg_id" {
  description = "SSH Security Group ID"
  value       = aws_security_group.ssh_sg.id
}

output "rds_sg_id" {
  description = "RDS Security Group ID"
  value       = aws_security_group.rds_sg.id
}
