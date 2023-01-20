FROM node:16
   
WORKDIR /app
   
COPY package*.json ./
   
RUN npm install --verbose
   
COPY . .
EXPOSE 5555
 
CMD [ "npm", "run", "dev" ]