FROM node:18-alpine3.17
RUN adduser -D guelmis
WORKDIR /app
RUN chown guelmis /app
COPY package*.json ./
RUN npm install && npm cache clean --force
COPY . /app
USER guelmis
EXPOSE 8000
CMD [ "node", "index.js" ]