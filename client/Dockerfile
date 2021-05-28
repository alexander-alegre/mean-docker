
# Create image based on the official Node 10 image from dockerhub
FROM node:16

# Create a directory where our app will be placed
RUN mkdir -p /app

# Create a working directory
RUN mkdir -p /usr/src/app

# Change directory so that our commands run inside this new directory
WORKDIR /app

# Copy dependency definitions
COPY package*.json /app/

# Install Angular CLI
RUN npm install -g @angular/cli

# Install dependecies
RUN npm install

RUN ng update

RUN npm update

# Get all the code needed to run the app
COPY . /app/

# Expose the port the app runs in
EXPOSE 4200


# # Serve the app
CMD ["npm", "start"]
