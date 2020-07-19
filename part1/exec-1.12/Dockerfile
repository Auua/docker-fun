FROM node

ENV NODE_ENV="production"
ENV API_URL="http://localhost:8000"
EXPOSE 5000

COPY . .

RUN npm install 

CMD ["npm", "start"]