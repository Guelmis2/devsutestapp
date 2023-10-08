FROM node:18-alpine3.17
RUN adduser -D guelmis
WORKDIR /app
RUN chown guelmis /app && apk add curl
COPY package*.json ./
RUN npm install 
COPY . /app
USER guelmis
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:8000/api/users || exit 1
CMD [ "node", "index.js" ]