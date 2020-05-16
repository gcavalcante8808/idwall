FROM node:12-alpine
WORKDIR /src
COPY src/ .
RUN npm ci
EXPOSE 3000
CMD npm start
