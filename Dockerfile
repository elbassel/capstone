FROM node:10-alpine
WORKDIR /capstone
RUN rm -rf /capstone/node_modules
RUN npm install
COPY . /capstone
CMD node index.js
EXPOSE 3000
