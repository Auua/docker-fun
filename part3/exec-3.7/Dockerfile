FROM node:alpine

WORKDIR /app 

ENV MONGODB_URI="ADD_URL_HERE"

COPY . .

RUN npm install && \ 
    adduser -S app && chown -R app /app

USER app

CMD ["npm", "start"]