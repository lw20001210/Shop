# 使用nginx作为基础镜像
FROM registry.cn-zhangjiakou.aliyuncs.com/publicci/nginx:1.22.0-alpine

# 指定工作目录为默认nginx要寻找的路径
WORKDIR /usr/share/nginx/html
#将前端项目打包后生成的静态文件复制到Nginx的默认网站根目录下，以便Nginx能够服务这些文件。
COPY dist /usr/share/nginx/html

# 假设自定义的nginx配置文件名为default.conf
# COPY default.conf /etc/nginx/conf.d/

# 暴露nginx服务的默认端口
EXPOSE 80

# 启动nginx服务器
CMD ["nginx", "-g", "daemon off;"]