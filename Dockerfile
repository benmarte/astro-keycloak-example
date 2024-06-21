# Use the official Node.js image as the base image.
FROM node:20.13.1-alpine3.20

# Set the working directory in the container.
WORKDIR /app

# Copy the package.json and package-lock.json to the container.
COPY package*.json ./

# Install project dependencies.
RUN npm i

# Copy the source code to the container.
# COPY . .

# Expose the port that the app will run on (usually 4321).
EXPOSE 4321

# Set hostname to localhost
ENV HOSTNAME "0.0.0.0" 

# Start the development server.
CMD ["npm", "run", "start"]
