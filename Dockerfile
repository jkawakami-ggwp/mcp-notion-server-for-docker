FROM node:18-alpine

WORKDIR /notion

RUN npm install -g typescript@latest

COPY ./notion /notion

RUN npm install && \
    npm run build

EXPOSE 3000

CMD ["npm", "run", "start"]