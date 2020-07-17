# Base image
FROM node:12.18.2

RUN mkdir -p /usr/src/app

WORKDIR /usr/src/app

# Copying angular folder from local directory to Educative directory
COPY package.json /usr/src/app

# Installing Angular cli and node modules in angular directory
RUN npm install -g @angular/cli

COPY . /usr/src/app

EXPOSE 4200/tcp

CMD ["npm", "start"]
