terraform {
  required_providers {
    virtualbox = {
      source  = "terra-farm/virtualbox"
      version = "0.2.2-alpha.1"
    }
  }
}

provider "virtualbox" {}

# VM 1 : Serveur Jenkins
resource "virtualbox_vm" "jenkins_vm" {
  name   = "Jenkins-Server"
  image  = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20230607.0.0/providers/virtualbox.box"
  cpus   = 2
  memory = "2048 mib"

  network_adapter {
    type = "nat"
  }
}

# VM 2 : Cluster Kubernetes / Minikube
resource "virtualbox_vm" "k8s_vm" {
  name   = "Kubernetes-Server"
  image  = "https://app.vagrantup.com/ubuntu/boxes/bionic64/versions/20230607.0.0/providers/virtualbox.box"
  cpus   = 2
  memory = "4096 mib"

  network_adapter {
    type = "nat"
  }
}