#Stage 1 - Build Stage

FROM node:18-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files and install deps
COPY package*.json ./
RUN npm ci

# Copy all project files
COPY . .

# Build the app
RUN npm run build


#Stage 2 - Runtime Stage

FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy only what's needed from build stage
COPY --from=builder /app ./

# Copy .env if you want to bake in environment
COPY .env .env

# Expose port Medusa listens on
EXPOSE 9000

# Start Medusa server
CMD ["npm", "run", "start"]




