output "vpc" {
  value = module.vpc
}

output "sg" {
  value = {
    consul       = module.consul_sg.security_group.id
    consul_lb    = module.consul_lb_sg.security_group.id
    nomad        = module.nomad_sg.security_group.id
    nomad_client = module.nomad_client_sg.security_group.id
    nomad_lb     = module.nomad_lb_sg.security_group.id
    app_lb       = module.application_lb_sg.security_group.id
  }
}
