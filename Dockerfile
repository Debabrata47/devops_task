# Use an official Node.js image
FROM node:18-alpine

# Set the working directory
WORKDIR /app

# Install corepack to enable pnpm
RUN corepack enable

# Copy package.json and pnpm-lock.yaml
COPY package.json pnpm-lock.yaml ./

# Install dependencies using pnpm
RUN pnpm install

# Copy the rest of the application files
COPY . .

# Copy the .env.local file for environment variables
COPY .env.local .env.local

# Expose port 3000
EXPOSE 3000

# Run the development server
CMD ["pnpm", "dev"]
