This project demonstrates Infrastructure as Code (IaC) using Terraform to provision a local multi-container setup using Docker — completely without any cloud services, making it perfect for learning, portfolios, and interviews.

⭐ Project Highlights

🔧 Provision infrastructure using Terraform

🐳 Deploy Docker containers automatically

🌐 NGINX web server container provisioned via Terraform

🛢 Redis in-memory database container provisioned via Terraform

🔗 Custom Docker network created & attached to containers

⚡ Fast, lightweight, real-world IaC project

💼 Interview + Resume ready project

🧑‍💻 Runs fully on WSL Ubuntu (No Docker Desktop required)

📁 Project Architecture
Terraform → Docker Provider → Docker Engine (WSL)
      |
      ├── Creates Docker Network
      ├── Deploys Redis Container
      └── Deploys Nginx Container (Exposed on Port 8081)

🗂 Directory Structure
terraform-docker-infra/
│── main.tf
│── provider.tf
│── variables.tf
│── outputs.tf
│── terraform.tfstate
│── README.md
└── modules/ (optional future expansion)

⚙️ Technologies Used

Terraform v1.x

Docker (WSL backend)

kreuzwerker/docker Terraform provider

Ubuntu (WSL 2)

🧰 Prerequisites

Make sure the following are installed:

Tool	Version	Check
Terraform	≥ 1.0	terraform -version
Docker Engine	≥ 20.x	docker --version
WSL 2	Ubuntu	wsl -l -v
🚀 How to Run This Project Locally
1. Clone the Repo
git clone https://github.com/<your-username>/terraform-docker-infra.git
cd terraform-docker-infra

2. Initialize Terraform
terraform init

3. Validate Configuration
terraform validate

4. Apply Terraform (Provision Infrastructure)
terraform apply -auto-approve


Expected output:

NGINX running at:
👉 http://localhost:8081

Redis container running internally

Docker network: devops_network

5. Verify Containers
docker ps


You should see:

nginx_web

redis_db

6. Destroy Infrastructure
terraform destroy -auto-approve

📸 Screenshots (Add after taking screenshots)

Terraform apply output

Docker containers running

Nginx webpage


