FROM php:8.3.20-apache

# 安装 APCu 扩展 via PECL
RUN pecl install apcu && \
    docker-php-ext-enable apcu

# 设置工作目录（Apache 默认根目录）
WORKDIR /var/www/html

# 复制你的 PHP 文件进去
COPY stv-nosession.php /var/www/html/

USER nobody

# 暴露端口（非必须，docker run 时指定即可）
EXPOSE 80
