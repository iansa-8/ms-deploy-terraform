FROM node:20-alpine

WORKDIR /app

# Copiar dependencias
COPY package*.json ./
RUN npm install

# Copiar código
COPY . .

EXPOSE 3000

CMD ["npm", "start"]
