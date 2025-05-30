# Use official Node.js image
FROM node:18

# Create app directory
WORKDIR /app

# Copy app files
COPY package*.json ./
RUN npm install

COPY . .

# Expose port and start app
EXPOSE 3000
CMD ["npm", "start"]
