FROM node:18-alpine3.17
RUN adduser -D guelmis
RUN mkdir /app && chown guelmis /app
WORKDIR /app
COPY . /app
RUN npm install
RUN npm cache clean --force
USER guelmis
EXPOSE 8000
CMD npm run start
