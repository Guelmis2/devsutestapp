FROM node:18-alpine3.17
RUN adduser -D guelmis
WORKDIR /app
RUN chown guelmis ./
COPY . ./
RUN npm install && npm cache clean --force
USER guelmis
EXPOSE 8000
CMD [ "node", "index.js" ]