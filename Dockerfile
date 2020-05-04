FROM node:10-alpine
WORKDIR /capstone
RUN rm -rf /capstone/node_modules
RUN npm install
RUN ls /capstone/node_modules
COPY . /capstone
CMD npm start
EXPOSE 3000
