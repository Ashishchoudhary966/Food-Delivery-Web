# Food-Delivery-Web

## Table of Contents

1. [Install Docker](#1-install-docker)
2. [Create a Project Directory](#2-create-a-project-directory)
3. [Create a Dockerfile](#3-create-a-dockerfile)
4. [Build the Docker Image](#4-build-the-docker-image)
5. [Run the Docker Container](#5-run-the-docker-container)
6. [Push the Docker Image to Docker Hub](#6-push-the-docker-image-to-docker-hub)
7. [Pull and Run the Image From Docker Hub](#7-pull-and-run-the-image-from-docker-hub-optional)
8. [Stop and Remove the Container](#8-stop-and-remove-the-container)
9. [Summary of Commands](#9-summary-of-commands)

---

## 1. Install Docker

### For Linux:
```bash
sudo apt update
sudo apt install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
```

### For Windows/Mac:
- Download and install Docker Desktop from [Docker's website](https://www.docker.com/products/docker-desktop).

---

## 2. Create a Project Directory

```bash
mkdir project2
cd project2
```

---

## 3. Create a Dockerfile

1. Create a file named `Dockerfile` in your project directory.
2. Add the following content:

   ```dockerfile
   FROM nginx:latest
   COPY ./html /usr/share/nginx/html
   ```
   This Dockerfile uses the official Nginx image and copies your custom HTML files into the container.

3. **Prepare Website Files:** Create a folder named html inside your project directory and add an index.html , style.css and any other required files.

---

## 4. Build the Docker Image

```bash
docker build -t project2-image .
```

---

## 5. Run the Docker Container

```bash
docker run -d -p 8080:80 --name project2-container project2-image
```

- Open a browser and visit `http://localhost:8080` to view your app.

---

## 6. Push the Docker Image to Docker Hub

1. **Log in to Docker Hub:**
Before you can push an image, you need to log in to Docker Hub from your terminal.
   ```bash
   docker login
   ```
-  Enter your Docker Hub username and password when prompted.
-  If you don’t have an account, create one at Docker Hub.

2. **Push the image:**
   ```bash
   docker push <your-dockerhub-username>/<your-image-name>
   ```
   for example my Docker Hub user name is "ashishchoudhary966" and my image name is "project2-image" so I write this command-
   ```bash
   docker push ashishchoudhary966/project2-image
   ```

---

## 7. Pull and Run the Image From Docker Hub (Optional)

1. Pull the image:
   ```bash
   docker pull <your-dockerhub-username>/<your-image-name>
   ```
 - For example my command is:
   ```bash
   docker pull ashishchoudhary966/project2-image
   ```

2. Run the pulled image:
   ```bash
   docker run -d -p 8080:80 <your-dockerhub-username>/<your-image-name>
   ```
 - For example my command is:
   ```bash
   docker run -d -p 8080:80 ashishchoudhary966/project2-image
   ```
   
---

## 8. Stop and Remove the Container

1. Stop the container:
   ```bash
   docker stop project2-container
   ```

2. Remove the container:
   ```bash
   docker rm project2-container
   ```

---

## 9. Summary of Commands

| **Action**                   | **Command**                                             |
|------------------------------|---------------------------------------------------------|
| Create directory             | `mkdir project2 && cd project2`              |
| Build image                  | `docker build -t project2-image .`                            |
| Run container                | `docker run -d -p 8080:80 --name project2-container project2-image` |
| Login to Docker Hub          | `docker login`                                          |
| Push image to Docker Hub     | `docker push ashishchoudhary966/project2-image` |
| Stop a running container     | `docker stop project2-container`                       |
| Remove a container           | `docker rm project2-container`                         |

---

### Notes:
- Replace `<your-dockerhub-username>` with your actual Docker Hub username.
- Ensure Docker is running on your system before starting.

---

- Now you can also access my Docker Hub image by using this command 
```bash
docker pull ashishchoudhary966/project2-image
```
