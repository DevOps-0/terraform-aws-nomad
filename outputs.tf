output "loadbalancer_dns_names" {
    value = module.loadbalancing.lb_dns_names
}

output "public_ips" {
    value = {
        consul_servers = module.consul_servers.public_ips
        nomad_servers = module.nomad_servers.public_ips
    }
}