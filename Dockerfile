# Step 1: Use an official Node.js image as a base image
FROM node:18-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json (or yarn.lock) files into the container
COPY package*.json ./

# Step 4: Install the dependencies
RUN npm install

# Step 5: Copy the rest of the application code into the container
COPY . .

# Step 6: Build the project
RUN npm run build

# Step 7: Expose the port the app will run on
EXPOSE 4173

# Step 8: Set the command to start the preview server on port 4173
CMD ["npm", "run", "preview"]

