# ---------------------------
# Create a Docker network
# ---------------------------
resource "docker_network" "devops_net" {
  name = "devops_network"
}
# ---------------------------
# Nginx container
# ---------------------------
resource "docker_container" "nginx_server" {
  name  = "nginx_web"
  image = "nginx:latest"

  networks_advanced {
    name = docker_network.devops_net.name
  }

  ports {
    internal = 80
    external = 8081
  }
}
# ---------------------------
# Redis container
# ---------------------------
resource "docker_container" "redis_db" {
  name  = "redis_db"
  image = "redis:latest"

  networks_advanced {
    name = docker_network.devops_net.name
  }
}

