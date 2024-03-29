# Use the official Node.js image as base
FROM node: __

# Set the working directory in the container
WORKDIR /app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Build your Next.js application
RUN npm run build

# Expose the port Next.js is running on
EXPOSE 3000

# Run the Next.js application
CMD ["npm", "start"]
