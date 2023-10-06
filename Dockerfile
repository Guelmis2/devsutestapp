FROM node:18-alpine3.17
RUN adduser -D guelmis
RUN mkdir /app && chown guelmis /app
WORKDIR /app
COPY package*.json /app
RUN npm install
USER guelmis
EXPOSE 8000
CMD [ "node", "index.js" ]