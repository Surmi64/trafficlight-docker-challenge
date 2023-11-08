###################################################################
# This is templating file of Dockerfile. It will help you to      #
# complete all required instructions for building the Dockerfile. #
###################################################################

# 1.1.1 | Use the following base image "node:17.0-alpine3.14"

# 1.1.2 | Working directory inside the containers should be "/app"

# 1.1.3 | Copy "package*.json" file(s) to working directory

# 1.1.4 | Install "npm=7.17.0-r0" package manager, then install dependency packages

# 1.1.5 | Copy "app.js" file to working directory

# 1.1.6 | Copy the "index.pug" and "favicon.ico" files to the "/app/views" directory

# 1.1.7 | The port "80" should be exposed by the container

# 1.1.8 | The container must execute the command "node app.js" in run time

FROM node:17.0-alpine3.14

WORKDIR /app

COPY package*.json /app

RUN apk update && apk add npm=7.17.0-r0
RUN npm install

RUN mkdir views
COPY app.js .
COPY index.pug /app/views/
COPY favicon.ico /app/views/

EXPOSE 80

CMD [ "node", "app.js" ]