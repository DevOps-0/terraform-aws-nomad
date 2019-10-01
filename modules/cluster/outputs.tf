output "public_ips" {
    value = var.associate_public_ips ? data.aws_instances.instances[0].public_ips : []
}