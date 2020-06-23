FROM node:alpine


# INSTALL GIT
## Update repositories
RUN apk update

## Download and install git
RUN apk add git

# Set the working directory.
WORKDIR /usr/src/app

# Create environment
EXPOSE 3000
ENV PORT 3000 

# CONFIG GO SERVER
## Clone repoe
RUN git clone https://github.com/JonatanOrdonez/tr-frontend.git

## Access to repo folder
WORKDIR /usr/src/app/tr-frontend

## Install NODE dependencies
RUN npm install

## Build NODE project
RUN npm run build

# START SERVERS
CMD ["node", "server.js"]

