FROM node:20-alpine3.17 
WORKDIR "/app"
COPY . .
RUN npm ci
RUN npm run build
CMD [ "sh", "-c", "npm run start:linux-prod"]