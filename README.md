# 🚀 Flask Dockerized Application with CI/CD

This is a simple Flask web application designed as part of a DevOps learning project. It demonstrates how to build, containerize, and automate deployment of a basic Python web app using Git, Docker, and GitHub Actions.

---

## 📌 Project Overview

This project was created for **DevOps Project 1** on a [YAML Ops Slack Community](https://yamlopscommunity.slack.com) and follows a real-world DevOps workflow from code to deployment. The app includes:

- A basic Flask server with a Home, About, and Contact routes
- Docker containerization for consistent builds
- GitHub Actions pipeline for automated CI/CD
- Option to push Docker images to Docker Hub
---

## 🛠️ Tech Stack

- **Python 3.x**
- **Flask**
- **Docker**
- **Git + GitHub**
- **GitHub Actions (CI/CD)**

---

## 💡 DevOps Implementation

### 🔧 1. Flask Application
- A minimal Flask app (`app.py`) with a simple route.
- Customizable for more routes and templates if needed.

### 📦 2. Dockerized Environment
- `Dockerfile` to containerize the application
- `.dockerignore` to optimize image build
- Local development and testing via Docker

### 📂 3. Version Control with Git & GitHub
- Project initialized with Git
- `.gitignore` for Python/Docker exclusions
- Hosted on GitHub for collaboration and automation

### 🔁 4. Continuous Integration & Deployment (CI/CD)
- **GitHub Actions** workflow file under `.github/workflows/ci.yml`
- Workflow automatically triggered on:
  - Pushes to the `main` branch
  - Pull requests
  - Manual workflow dispatch
- Workflow steps include:
  - Running Python tests using `pytest` to ensure code quality
  - Building the Docker image
  - Pushing the Docker image to Docker Hub tagged with the commit SHA

> You can find and customize the GitHub Actions workflow in the `.github/workflows` directory.

### 🔐 Environment Variables & Secrets

To enable Docker image pushing in the CI/CD workflow, you need to set the following in your GitHub repository settings:

- **`DOCKERHUB_USERNAME`** (set as a repository variable)
- **`DOCKERHUB_TOKEN`** (set as a secret containing your Docker Hub access token)

Without these, the workflow cannot authenticate to Docker Hub and push images.

---

## 🚀 Getting Started (Locally)

### 1. Clone the Repository
```bash
git clone https://github.com/isrealade/flask-docker-devops.git
cd flask-docker-devops
```

### 2. Build the Docker Image
```bash
docker build -t flask-app .
```

### 3. Run the Docker Container
```bash
docker run -p 5000:5000 flaskapp
```

### 4. Access the Application
Visit http://localhost:5000 in your browser to see the app running.
