resource "docker_container" "ubuntu" {
  name  = "app"
  image = "hashicorp/http-echo:1.0"

  command = [
    "-text", "Hola Mundo desde app"
  ]

  networks_advanced {
    name = docker_network.labnet.name
  }
}

resource "docker_network" "labnet" {
    name = "labnet"
}