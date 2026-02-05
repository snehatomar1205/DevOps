## Introduction:

This project demonstrates the deployment of a real-time full-stack chat application using **Kubernetes and modern DevOps practices**. The primary focus is on container orchestration, CI/CD automation, ingress management, persistent storage, and autoscaling rather than application development.

An existing open-source chat application was used as the base, and the complete DevOps lifecycle—including Dockerization, Jenkins-based CI/CD, Kubernetes deployments, StatefulSets, Ingress, and HPA—was implemented to gain hands-on, production-oriented experience.


- **User Interaction (Frontend – React):**
  - Users interact with the frontend application via a web browser.
  - The frontend is deployed as a Kubernetes Deployment and exposed internally using a ClusterIP Service.
  - External access is provided through an NGINX Ingress.
  - The frontend communicates with the backend using HTTP REST APIs and WebSocket connections.

- **Backend (Node.js / Express + Socket.io):**
  - The backend handles server-side logic such as authentication, message handling, and real-time communication.
  - It is deployed as a Kubernetes Deployment and exposed internally via a ClusterIP Service.
  - Horizontal Pod Autoscaler (HPA) is enabled for the backend to handle variable traffic loads.
  - Secrets such as JWT keys are managed using Kubernetes Secrets.

- **MongoDB (Database):**
  - PersistentVolumeClaims (PVCs) are used to ensure data persistence across pod restarts.
  - Database scaling is handled manually, not via HPA, following Kubernetes best practices.

---

## Features Implemented:

- Real-time messaging using Socket.io  
- JWT-based authentication and authorization  
- Backend autoscaling with Kubernetes HPA  
- NGINX Ingress-based traffic routing  
- Persistent storage with PVCs  
- Jenkins-based CI/CD automation  
- Secure secrets management using Kubernetes  

---

## Tech Stack:

**Application**
- Backend: Node.js, Express, MongoDB, Socket.io  
- Frontend: React, TailwindCSS  

**DevOps**
- Docker, Kubernetes  
- Jenkins CI/CD  
- NGINX Ingress Controller  
- Horizontal Pod Autoscaler  
- Persistent Volumes & Secrets  

---

## Kubernetes Manifests Structure:

```bash
k8s/
├── namespace.yaml
├── backend-deployment.yaml
├── backend-hpa.yaml
├── backend-service.yaml
├── frontend-deployment.yaml
├── frontend-service.yaml
├── mongodb-pvc.yaml
├── mongodb-pv.yaml
├── mongodb-service.yaml
├── mongodb-deployment.yaml
├── ingress.yaml
├── backend-hpa.yaml
└── secrets.yaml
```

---

## Horizontal Pod Autoscaling (HPA):

- Applied only to backend services
- Minimum replicas: 1
- Maximum replicas: 5
- CPU utilization threshold: 60%

Frontend and database components are excluded based on workload suitability.

---

## Deployment Steps:

```bash
kubectl apply -f namespace.yaml
kubectl apply -f secrets.yaml
kubectl apply -f pvc.yaml
kubectl apply -f mongodb-statefulset.yaml
kubectl apply -f mongodb-service.yaml
kubectl apply -f backend-deployment.yaml
kubectl apply -f backend-service.yaml
kubectl apply -f frontend-deployment.yaml
kubectl apply -f frontend-service.yaml
kubectl apply -f ingress.yaml
kubectl apply -f backend-hpa.yaml
```

---

## Verification:

```bash
kubectl get all -n chat-app
kubectl get ingress -n chat-app
kubectl get hpa -n chat-app
kubectl get pvc -n chat-app
```
