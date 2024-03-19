FROM node:12
# Create app directory
WORKDIR /ust/src/app

# Install app dependencies
COPY pacage*.json ./

RUN npm Install
# If you are building your code for production
# RUN npm ci --only=production

#Bundle App source
COPY . .
EXPOSE 8080
CMD ["node","index.js"]