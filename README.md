# Food-Delivery-Web
# Set up a virtualized Environment Using Docker

### Step 1. Install Docker
 Download and install Docker Desktop from Docker's website.

### Step 2. Create a Project Directory
  1. mkdir project2  = Create a folder named project2
  2. cd project2     = move into the folder project2

### Step 3. Create a Dockerfile
  1. Create a file named Dockerfile in your project directory.
  2. Add content in Dockerfile
     
   FROM nginx:latest = Use the Nginx image
   
   COPY ./html /usr/share/nginx/html = Copy the website files to the container

### Step 4. Make Website Files: 
 Create a folder named html inside your project directory and add an index.html , style.css and any other required files.

### Step 5. Make the Docker Image
docker build -t project2-image .

### Step 6. Run the Docker Container
docker run -d -p 8080:80 --name project2-container project2-image

### Step 7.Check website on localhost
Open a browser and visit localhost:8080 to see website.

### Step 8. Push the Docker Image to Docker Hub

1. Log in to Docker Hub:

   docker login
   
   Enter your Docker Hub username and password.

2. Tag the image:
 
   docker tag project2-image ashishchoudhary966/project2-image:latest
   
   My Docker Hub user name is "ashishchoudhary966" and My image name is "project2-image".
   
3. Push the image:

   docker push ashishchoudhary966/project2-image

### Step 9. Pull and Run the Image From Docker Hub 

1. Pull the image:

   docker pull ashishchoudhary966/project2-image

2. Run the pulled image:
  
   docker run -d -p 8080:80 ashishchoudhary966/project2-image

### Step 10. Stop and Remove the Container

1. Stop the container:
   
   docker stop project2-container

2. Remove the container:
 
   docker rm project2-container

### Note:
Now you can also pull my image from Docker Hub by using this command 

docker pull ashishchoudhary966/project2-image
