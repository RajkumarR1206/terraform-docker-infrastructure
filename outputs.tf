output "nginx_container_ip" {
  value = docker_container.nginx_server.network_data[0].ip_address
}

output "redis_container_ip" {
  value = docker_container.redis_db.network_data[0].ip_address
}

output "docker_network" {
  value = docker_network.devops_net.name
}

