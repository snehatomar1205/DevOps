# MERN Stack Docker

This repository contains my hands-on work building a Dockerized
three-tier MERN stack application using multi-stage Docker builds.

The goal was to understand how frontend, backend, and database
services are built, optimized, and run using Docker.

---

## Architecture

- Frontend: React-style frontend served via Nginx
- Backend: Node.js + Express
- Database: MongoDB

Each service runs in its own container and communicates using
Docker networking.

---

## What I practiced

- Writing multi-stage Dockerfiles
- Optimizing frontend and backend images
- Running MongoDB as a container
- Docker networking between services
- Persisting database data using Docker volumes
- Managing the entire stack using Docker Compose

---

## How to run

```bash
docker compose up --build
docker compose down