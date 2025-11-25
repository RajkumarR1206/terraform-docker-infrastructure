

---

#  Terraform + Docker Infrastructure (Local IaC Project)

This project demonstrates how to provision local containerized infrastructure using **Terraform** and **Docker** running inside **WSL (Ubuntu)**.
The goal is to showcase **Infrastructure as Code (IaC)** principles — everything runs locally using Docker.

Terraform provisions:

* A Docker network
* An NGINX container
* A custom port mapping (e.g., `8081 → 80`)
* A container running inside the created network

This project demonstrates core IaC concepts:

* Declarative provisioning
* Resource lifecycle management
* State management
* Reproducible environments

---

## Project Structure

```
terraform-docker-infra/
│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── modules/
│── .terraform/
│── terraform.tfstate
│── terraform.tfstate.backup
└── README.md
```

---

## Features

* 100% local infrastructure 
* Uses Terraform Docker Provider
* Reusable module structure
* Container provisioning via IaC
* Easy cleanup using `terraform destroy`

---

##  Prerequisites

Install the following tools.

### 1. Terraform

```sh
sudo apt update
sudo apt install terraform -y
terraform -version
```

### 2. Docker Engine (inside WSL — without Docker Desktop)

```sh
sudo apt update
sudo apt install docker.io -y
sudo usermod -aG docker $USER
sudo service docker start

docker --version
docker ps
```

> Ensure Docker is running before applying Terraform.

---

##  How to Use This Project

### Clone the Repository

```sh
git clone https://github.com/RajkumarR1206/terraform-docker-infrastructure.git
cd terraform-docker-infra
```

### Initialize Terraform

```sh
terraform init
```

### Validate the Configuration

```sh
terraform validate
```

### Apply Infrastructure

```sh
terraform apply -auto-approve
```

### Expected Output:

<img width="1062" height="712" alt="terraform-apply" src="https://github.com/user-attachments/assets/989aa3fc-2f5a-4ffe-841e-6bd638a4b5a3" />





* Terraform launches an NGINX container accessible at:

```
http://localhost:8081
```
<img width="1075" height="364" alt="nginx" src="https://github.com/user-attachments/assets/acd9361f-f037-4e97-a7a8-fa9a6c6132b3" />


Check running containers:

```sh
docker ps
```

<img width="1205" height="126" alt="container-output" src="https://github.com/user-attachments/assets/f8443880-f7a0-4cb0-a220-3b420ebbef74" />


---

## Destroy Infrastructure

To remove everything created by Terraform:

```sh
terraform destroy -auto-approve
```

---

## Files Explained:

### `provider.tf`

Defines the Docker provider.

### `main.tf`

Contains main resources:

* Docker network
* Docker container (NGINX)

### `variables.tf`

Defines input variables:

* Container name
* Docker image
* Port number

### `outputs.tf`

Displays:

* Container ID
* Container name
* Exposed ports

---

## Example: Update and Re-apply

If you update a value (ex: change port from `8081` → `9090`):

```sh
terraform apply
```

Terraform will:

* Detect changes
* Modify only the required resources
* Recreate/update the container as needed

---

## Notes

* Do **not** manually edit the Terraform state file (`terraform.tfstate`).
* This project can be extended with:

  * Additional containers
  * Databases
  * Docker Compose
  * More complex Terraform modules
* Designed to run fully **inside WSL Ubuntu** without Docker Desktop.

---

##  Contact

Feel free to fork this repository and submit improvements.

---


