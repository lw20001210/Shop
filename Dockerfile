# 使用nginx作为基础镜像
FROM nginx:latest
 
# 指定工作目录
WORKDIR /usr/share/nginx/html
 
# 将构建好的前端项目文件复制到nginx的html目录下
# 假设前端项目打包后生成的文件夹名为dist
COPY dist/ .
 
# 复制自定义的nginx配置文件到容器内，替换默认配置
# 假设自定义的nginx配置文件名为default.conf
COPY default.conf /etc/nginx/conf.d/
 
# 暴露nginx服务的默认端口
EXPOSE 80
 
# 启动nginx服务器
CMD ["nginx", "-g", "daemon off;"]