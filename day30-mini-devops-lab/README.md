# Day 30 Final Project – Mini DevOps Lab

This project demonstrates a **Mini DevOps Lab** combining **Terraform**, **Ansible**, **Docker**, and **GitHub**.

## Architecture
- **Terraform** → Creates EC2 instance on AWS
- **Ansible** → Installs Docker & configures server
- **Docker** → Runs an Nginx container with custom page
- **GitHub** → Stores Infrastructure-as-Code

##  Project Structure
```
terraform/ → Infrastructure
ansible/ → Configuration Management
docker/ → Dockerfile & App
```
## Steps to Run
1. Clone repo  
   ```
   git clone https://github.com/NahidCSERU/30-Days-Linux-for-DevOps-Challenge.git
   cd day30-mini-devops-lab
   ```
2. Deploy with Terraform
    ```
    cd terraform
    terraform init
    terraform apply -auto-approve
    ```
3. Configure with Ansible
    ```
    cd ../ansible
    ansible-playbook -i inventory.ini playbook.yml
    ```
4. Test in browser
    ```
    Visit http://<EC2_PUBLIC_IP> 
    ```
You now have a Mini DevOps Lab running on AWS using Terraform + Ansible + Docker + GitHub.