FROM node:18
       WORKDIR /app
       COPY package*.json ./
       RUN npm install
       COPY . .
       # Install Playwright browsers
       RUN npx playwright install --with-deps
       CMD ["npm", "start"]
