# Use a Node.js base image
FROM node:latest

# Set working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Expose port 3000 for the Node.js server
EXPOSE 3000

# Command to run the Node.js server
CMD ["npm", "start"]
