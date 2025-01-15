# 构建阶段
FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/node:18.18.0-alpine-make AS build
# FROM node:18.18.2
# 设置工作目录为项目根目录
# WORKDIR /shop

# # # 复制package.json和package-lock.json (确保缓存的优化)
# COPY package*.json ./
# 复制源代码
# COPY . .

# # 安装依赖
RUN rm -rf node_modules \
    && npm install \
    && npm run build


# 生产阶段
FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/nginx:1.22.0-alpine

# 设置工作目录为nginx的默认路径
WORKDIR /usr/share/nginx/html
# RUN ls -l
# 复制构建后的静态文件
COPY dist /usr/share/nginx/html

# 暴露80端口
EXPOSE 80

# 启动nginx服务器
CMD ["nginx", "-g", "daemon off;"]
