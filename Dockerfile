
FROM node:slim

WORKDIR /app
ENV TZ="Asia/Shanghai" \
  NODE_ENV="production"

COPY cc nm web package.json index.js start.sh /app/
 
EXPOSE 3000


RUN chmod 777 cc package.json index.js start.sh /app &&\
  apt-get update && \
  apt-get install -y iproute2  coreutils  procps curl && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    npm install


CMD ["node", "index.js"]
