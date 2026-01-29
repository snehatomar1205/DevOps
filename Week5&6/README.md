# Terraform & Ansible – Proof of Work

This repository serves as my **Proof of Work (PoW)** for learning and applying  
**Terraform** and **Ansible** to implement an Infrastructure as Code (IaC)–based
automation workflow.

The project demonstrates a clear separation between **infrastructure provisioning**
and **configuration management**, following real-world DevOps practices.

---

## Project Overview

- Terraform is used to provision cloud infrastructure
- Ansible is used to configure servers after provisioning
- Supports multiple environments (dev / stage / prod)
- Designed with modularity and clarity in mind

---

## Technology Stack

- Terraform
- Ansible
- AWS / Local Virtual Machines
- Linux
- Nginx


---

## VPC (Network Layer)

The **VPC module** defines the foundational network layer required for the
infrastructure.

Responsibilities of this module include:
- Creating an isolated private network
- Defining subnets for resource placement
- Providing a secure networking boundary for compute resources

All EC2 instances are provisioned within this VPC, reflecting standard
cloud architecture practices.

---

## Terraform Implementation

Key concepts applied:
- Infrastructure as Code (IaC)
- Providers, resources, variables, and outputs
- Environment isolation
- Standard Terraform workflow:
  - `terraform init`
  - `terraform plan`
  - `terraform apply`
- Logical separation of network and compute layers

---

## Ansible Implementation

Key concepts applied:
- Inventory management
- Playbooks and roles
- Idempotent configuration management
- Automated installation and configuration of Nginx
- Post-provisioning server configuration

---

## Terraform and Ansible Integration

Terraform is responsible for **creating infrastructure**, while Ansible handles
**server configuration**.

This separation ensures:
- Cleaner infrastructure code
- Easier maintenance
- Improved scalability and automation

---

## Learning Outcomes

Through this project, I gained hands-on experience in:
- Designing infrastructure using Terraform
- Managing configuration using Ansible
- Structuring multi-environment setups
- Applying DevOps best practices in a controlled project

---

## Notes

This project is intentionally scoped to emphasize **conceptual clarity**
and **tool usage**, rather than production-scale complexity.

