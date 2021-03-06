#STAGE 1
FROM node:14.15-alpine AS build
WORKDIR /usr/src/app
COPY ./package.json ./package-lock.json ./
RUN no | npm install
COPY . .
RUN npm run build

#STAGE 2
FROM nginx:1.17.1-alpine
COPY nginx.conf /etc/nginx/nginx.conf
COPY --from=build /usr/src/app/dist/blog-front /usr/share/nginx/html