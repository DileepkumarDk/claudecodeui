FROM node:18

# Create working directory
WORKDIR /app

# Install Claude CLI globally
RUN npm install -g @anthropic-ai/claude-code

# Copy the app code from GitHub
COPY . .

# Install app dependencies
RUN npm install

# Expose the port (Claude UI default)
EXPOSE 3001

# Start your app (adjust if needed)
CMD ["npm", "run", "dev"]
