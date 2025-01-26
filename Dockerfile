# Use Node.js official image as the base image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json files to the container
COPY package*.json ./

# Install application dependencies
RUN npm install

# Copy the application code to the container
COPY . .

# Expose the application port
EXPOSE 3000

# Command to start the application
CMD ["npm", "start"]

