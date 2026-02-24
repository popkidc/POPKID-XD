FROM node:lts-buster

# Clone bot from GitHub
RUN git clone https://github.com/popkidc/POPKID-XD.git /root/popkid-xd-bot

# Set working directory
WORKDIR /root/popkid-xd-bot

# Install dependencies
RUN npm install && npm install -g pm2

# Expose port
EXPOSE 9090

# Start the bot
CMD ["npm", "start"]
