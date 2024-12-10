# Use a lightweight Node.js base image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Copy package files and install dependencies
COPY package.json package-lock.json* pnpm-lock.yaml* ./
RUN npm install -g pnpm && pnpm install

# Copy the rest of the app's source code
COPY . .

# Build the Svelte app
RUN pnpm run build

# Expose the app's port (default for most Svelte apps)
EXPOSE 5173

# Start the Svelte app
CMD ["pnpm", "run", "start"]
