# base image of node 14v
 
FROM node:14

#setting work directory 

WORKDIR /usr/src

# copying package.json and package-lock.json to the working directory

COPY package*.json ./

# installing required dependencies 

RUN npm install && npm install express body-parser cors mongoose node-persist

# copying rest of all files from current directory 

COPY . ./

# exposing port 3000

EXPOSE 3000

# command to start the application 

CMD ["node", "app.js"]
