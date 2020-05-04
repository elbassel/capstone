FROM node:10-alpine
WORKDIR /capstone
RUN rm -rf /capstone/node_modules
RUN npm install
COPY . /capstone
CMD npm start
EXPOSE 3000
