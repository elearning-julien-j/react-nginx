FROM node:lts-alpine
WORKDIR /app
COPY package*.json .
RUN npm install
RUN npm install --save-dev web-vitals
COPY . .
CMD ["npm", "start"]
