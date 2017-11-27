# Dockerfile reference https://docs.docker.com/engine/reference/builder/

# Build from linux node:boron base image (with node and npm installed on it)
FROM node:boron

RUN mkdir -p /usr/src/CCGroup39-assignment02
WORKDIR mkdir -p /usr/src/CCGroup39-assignment02

COPY package.json /usr/src/CCGroup39-assignment02
RUN npm install

# Bundle source files into application directory
COPY . /usr/src/CCGroup39-assignment02

EXPOSE 8080

CMD ["node", "clientServer.js"]

