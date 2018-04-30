FROM node:slim

# Create app directory
WORKDIR /Users/vamsee/practicess/nodeDocker

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /Users/vamsee/practicess/nodeDocker/

#RUN npm cache clean
RUN npm install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY . /Users/vamsee/practicess/nodeDocker

EXPOSE 9000
CMD [ "npm", "start" ]