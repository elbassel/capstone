FROM node:10-alpine
WORKDIR /app
RUN npm install
COPY . /app
CMD node index.js
EXPOSE 3000
