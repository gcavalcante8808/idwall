FROM node:12-alpine as main-build
ENV MICROSCANNER_PUBLIC_TOKEN=Y2UzZTQ2ZGQzYWNi
RUN apk add ca-certificates curl && \
    curl -o /usr/local/bin/microscanner https://get.aquasec.com/microscanner && \
    chmod +x /usr/local/bin/microscanner
RUN /usr/local/bin/microscanner ${MICROSCANNER_PUBLIC_TOKEN} --continue-on-failure
WORKDIR /src
COPY src/ .
RUN npm ci
EXPOSE 3000
CMD npm start
