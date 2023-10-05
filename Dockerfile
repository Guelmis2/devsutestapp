FROM node:18-alpine3.17
RUN adduser -D guelmis
RUN mkdir /app && chown guelmis /app
WORKDIR /app
COPY . /app
RUN npm install
USER guelmis
EXPOSE 8000
CMD npm run start
