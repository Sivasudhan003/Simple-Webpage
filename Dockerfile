FROM node:lts

# Set the working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Copy the app source code
COPY . .

# Ensure app.js has the correct permissions
RUN chmod 644 /usr/src/app/app.js

# Specify the default command
CMD ["node", "app.js"]
