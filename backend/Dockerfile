FROM golang:alpine


# INSTALL GIT
## Update repositories
RUN apk update

## Download and install git
RUN apk add git

# Set the working directory.
WORKDIR /usr/src/app

# Create environment
EXPOSE 4000

ENV GO_ENV prd 
ENV WHITE_LIST http://localhost:3000
ENV PORT 4000
ENV DB_HOST roachmaster
ENV DB_NAME catching
ENV DB_USER tradmin

# CONFIG GO SERVER
## Clone repoe
RUN git clone https://github.com/JonatanOrdonez/tr-backend.git

## Access to repo folder
WORKDIR /usr/src/app/tr-backend

## Build GO main
RUN go build main.go

# START SERVERS
CMD ["./main"]

