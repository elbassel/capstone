FROM node:10-alpine
WORKDIR /capstone
RUN rm -rf /capstone/node_modules
COPY . /capstone
RUN npm install
CMD npm start
EXPOSE 3000
