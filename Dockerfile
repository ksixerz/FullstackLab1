# Specify a base image
FROM node:alpine

WORKDIR /usr/app
#RUN apk add --no-cache libstdc++ &&  apk add --no-cache libgcc
# Install some depenendencies
COPY ./package.json ./
#COPY ./index.js ./
RUN npm install
COPY ./ ./

# Default command
CMD ["npm", "start"]
