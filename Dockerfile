# Step 1: Use a lightweight Node.js base image
FROM node:18-slim

# Step 2: Set working directory
WORKDIR /app

# Step 3: Copy only package.json and package-lock.json first (for caching)
COPY package*.json ./

# Step 4: Install dependencies
RUN npm install

# Step 5: Copy the rest of the app
COPY . .

# Step 6: Expose the development server port
EXPOSE 3000

# Step 7: Start the React development server
CMD ["npm", "start"]
