# Jenkins CI/CD for Docker Compose Application

This project demonstrates an end-to-end CI/CD pipeline using **Jenkins**
to automate the deployment of a **Three-tier MERN stack application**
managed with **Docker Compose**.

This work extends **Week 3 (Docker Compose)** by introducing continuous
integration and deployment using Jenkins.

---

## Jenkins Pipeline Overview

The Jenkins pipeline performs the following steps:

1. **Checkout Source Code**  
   Pulls the latest code from the GitHub repository.

2. **Deploy using Docker Compose**  
   - Stops existing containers (if running)
   - Builds Docker images
   - Starts frontend and backend services

3. **Verify Deployment**  
   Displays running containers to confirm successful deployment.

---

## Email Notifications

The Jenkins pipeline includes email notifications for build success and failure.
This requires Jenkins Email Extension Plugin and SMTP configuration on the Jenkins server.

---

## Tech Stack

- Jenkins
- Docker
- Docker Compose
- GitHub
- Linux

---

## Outcome

- Automated build and deployment using Jenkins
- Three-tier MERN stack application deployed via Docker Compose
- Real-world CI/CD workflow implementation

---

## Notes

This project focuses on CI/CD automation and deployment.
No application code changes were made as the goal was to
integrate Jenkins into an existing Dockerized system.
