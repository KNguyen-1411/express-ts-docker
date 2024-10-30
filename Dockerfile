# Development stage
FROM node:20.15-alpine3.19 AS development

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

ENV NODE_ENV=development

CMD ["npm", "run", "dev"]


# Build stage 
FROM node:20.15-alpine3.19 AS build

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

# Production stage
FROM node:20.15-alpine3.19 AS production

WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production && npm cache clean --force

COPY --from=build /app/dist ./dist
COPY --from=build /app/.env ./.env

ENV NODE_ENV=production

EXPOSE 3000

CMD ["node", "dist/index.js"]
