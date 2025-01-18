# 构建阶段
FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/node:18.18.0-alpine-make AS build
# FROM node:18.18.2

# 设置容器工作目录,下面的COPY和RUN命令都是基于容器工作目录来的,因为我的项目名称叫shop,所以我这里直接把工作目录命名为/shop,较为直观。
WORKDIR /shop

# 复制dockerfile所在目录项目文件到容器的工作目录
COPY . .

# 安装依赖
RUN rm -rf node_modules \
    && npm install \
    && npm run build


# 生产阶段
FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/nginx:1.22.0-alpine

# 设置生产阶段工作目录为nginx的默认路径
WORKDIR /usr/share/nginx/html
#将构建阶段生成的静态文件（/shop/dist）复制到 Nginx 的静态文件目录中。
COPY --from=build /shop/dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx服务器
CMD ["nginx", "-g", "daemon off;"]
