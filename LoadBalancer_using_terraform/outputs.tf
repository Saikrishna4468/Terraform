output "loadbalancerdns" {
  value = aws_lb.myalb.dns_name
}

output "pro_ins1_pubIP" {
  value = aws_instance.pro_ins1.public_ip
}

output "pro_ins2_pubIP" {
  value = aws_instance.pro_ins2.public_ip
}