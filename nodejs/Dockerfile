# base image
FROM node:12 as build-stage

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

RUN npm install -g nodemon typescript

# install and cache app dependencies
COPY package*.json /app/
RUN npm ci --only=production

# add app
COPY . /app

RUN tsc -p . --outDir ./dist

EXPOSE 3000
# start app
CMD ["nodemon", "/app/dist/index.js"]