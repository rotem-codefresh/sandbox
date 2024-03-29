FROM node:14-alpine

# Create app directory
WORKDIR /usr/src/hello

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./
RUN npm ci

# Bundle app source
COPY . .

EXPOSE 8080

CMD [ "node", "hello.js" ]