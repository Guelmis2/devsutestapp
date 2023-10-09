FROM node:18-alpine3.17
RUN adduser -D guelmis
WORKDIR /app
RUN chown guelmis /app && apk add curl
ENV DATABASE_NAME="./dev.sqlite_from_Dockerfile"
ENV DATABASE_USER="user_from_Dockerfile"
COPY package*.json ./
RUN npm install 
COPY . /app
USER guelmis
EXPOSE 8000
HEALTHCHECK --interval=30s --timeout=5s \
  CMD curl -f http://localhost:8000/api/users || exit 1
CMD [ "node", "index.js" ]