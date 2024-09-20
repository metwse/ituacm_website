FROM node:alpine

WORKDIR /app

# Copy the package.json files
COPY package*.json ./
# Install the dependencies
RUN npm install
# Copy the app files
COPY . .
# Build the app
RUN npm run build
# Run the app
CMD ["npm", "start"]
