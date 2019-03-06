FROM node:8

WORKDIR /app/HexoEditor

ADD docker-entrypoint.sh /bin

RUN  chmod +x /bin/docker-entrypoint.sh \
  && mkdir -p /app && cd /app \
  && npm install -g npm \
  && apt-get install git \
  && npm config set prefix "/app/nodejs/npm_global" \
  && npm config set cache "/app/nodejs/npm_cache" \
  && git clone https://github.com/zhuzhuyule/HexoEditor.git && cd /app/HexoEditor \
  && npm install -g electron@1.8.1 \
  && npm install
# //If In China, China, China, you can set mirror to speed up !
# npm config set registry "https://registry.npm.taobao.org/"
# npm config set electron_mirror "https://npm.taobao.org/mirrors/electron/"

ENTRYPOINT ["sh", "/bin/docker-entrypoint.sh"]
