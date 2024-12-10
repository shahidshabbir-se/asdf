# Step 1: Use an official Node.js image as a base image
FROM node:18-alpine

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Install pnpm globally
RUN npm install -g pnpm

# Step 4: Copy the package.json and pnpm-lock.yaml files into the container
COPY package.json pnpm-lock.yaml ./

# Step 5: Install the dependencies using pnpm
RUN pnpm install

# Step 6: Copy the rest of the application code into the container
COPY . .

# Step 7: Build the project
RUN pnpm run build

# Step 8: Expose the port the app will run on
EXPOSE 4173

# Step 9: Set the command to start the preview server on port 4173
CMD ["pnpm", "preview"]
