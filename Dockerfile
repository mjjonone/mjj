
FROM node:slim

WORKDIR /app
ENV TZ="Asia/Shanghai" \
  NODE_ENV="production"

COPY index.js package.json start.sh /app/
 
EXPOSE 3000


RUN chmod 777 /app &&\
  apt-get update && \
  apt-get install -y iproute2  coreutils  procps ca-certificates  && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
    npm install


CMD ["node", "index.js"]
