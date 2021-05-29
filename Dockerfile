FROM node:alpine

WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

FROM nginx:alpine
COPY --from=0 /app/dist /usr/share/nginx/html
EXPOSE 80
ENV NODE_ENV=production
RUN echo 'Dockerfile production deployment'

