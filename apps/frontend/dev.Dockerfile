# syntax=docker.io/docker/dockerfile:1

FROM node:23-alpine

WORKDIR /app

COPY package.json  ./
COPY apps/frontend/package.json ./apps/frontend/
COPY packages/shared/package.json ./packages/shared/
RUN npm install

COPY . .

WORKDIR /app/apps/frontend
ENV NODE_ENV=development

CMD ["npm", "run", "dev --workspace=frontend"]