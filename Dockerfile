FROM node:18

# Create app working directory
WORKDIR /app

# Install Claude CLI globally
RUN npm install -g @anthropic-ai/claude-code

# Copy app source code
COPY . .

# Install dependencies
RUN npm install

# Build the Vite frontend
RUN npm run build

# Expose the backend server port
EXPOSE 3001

# Start the backend server (serves built frontend)
CMD ["node", "server/index.js"]

