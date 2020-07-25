FROM node:alpine

WORKDIR /app 

ENV FRONT_URL=http://localhost:5000

COPY . .

RUN npm install && \ 
    adduser -S app && chown -R app /app

USER app

CMD ["npm", "start"]