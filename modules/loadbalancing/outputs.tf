output "target_group_arns" {
  value = {
    consul = [
      aws_lb_target_group.consul_ui.arn,
    ]
    nomad = [
      aws_lb_target_group.nomad_ui.arn,
    ]
    app = [
      aws_lb_target_group.application_ui.arn,
      aws_lb_target_group.application_lb.arn,
      aws_lb_target_group.application_db.arn,
    ]
  }
}

output "lb_dns_names" {
  value = {
    consul = "${aws_lb.consul_lb.dns_name}:8500"
    nomad  = "${aws_lb.nomad_lb.dns_name}:4646"
    fabio    = "${aws_lb.application_lb.dns_name}:9998"
    webapp = "${aws_lb.application_lb.dns_name}:9999"
  }
}
