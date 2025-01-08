# https://docs.docker.com/samples/library/openjdk/
# FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/node:18.18.0-alpine-make

# COPY . /workspace/src

# WORKDIR /workspace/src

# RUN rm -rf node_modules \
#     && npm install \
#     && npm run build

FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/nginx:1.22.0-alpine

COPY ./make/localtime /etc
COPY ./make/timezone /etc

RUN rm -rf /etc/nginx/conf.d/default.conf
COPY make/app.nginx.conf /etc/nginx/conf.d/default.conf
COPY /dist /workspace/apps

WORKDIR /dist
EXPOSE 80
