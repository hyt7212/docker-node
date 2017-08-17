FROM node:8.4.0-alpine

RUN apk add --no-cache \
      bash tzdata g++ make python && \

    python -m ensurepip && \
    rm -r /usr/lib/python*/ensurepip && \
    pip install --upgrade pip setuptools && \
    rm -r /root/.cache && \

    cp -r -f /usr/share/zoneinfo/Hongkong /etc/localtime && \
    npm install -g cnpm --registry=https://registry.npm.taobao.org && \
    rm -rf /var/cache/apk/* && rm -rf /tmp/*