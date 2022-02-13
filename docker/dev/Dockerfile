FROM node:14.15-alpine
WORKDIR /usr/src/app
COPY package.json package-lock.json ./
RUN no | npm install
COPY . .
CMD ["ng", "serve"]
EXPOSE 4200