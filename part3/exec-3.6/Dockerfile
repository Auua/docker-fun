FROM node:alpine as build-stage

WORKDIR /app 

ENV API_URL=http://localhost:8000

COPY . .

RUN npm install && npm run build && \ 
    adduser -S app && chown -R app /app

USER app

EXPOSE 5000

FROM node:alpine

COPY --from=build-stage /app/dist/ /dist/

CMD  npm install -g serve && serve -s -l 5000 dist