# syntax=docker.io/docker/dockerfile:1

FROM node:23-alpine

WORKDIR /app

COPY package.json  ./
COPY apps/backend/package.json ./apps/backend/
COPY packages/shared/package.json ./packages/shared/
RUN npm install

COPY . .

WORKDIR /app/apps/backend

CMD ["npm", "run", "start:dev --workspace=backend"]