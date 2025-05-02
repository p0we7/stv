#!/bin/bash
set -e

# 安装必要的扩展和依赖
echo "Installing APCu extension..."
pecl install apcu
docker-php-ext-enable apcu

# 启动 Apache（前台模式）
exec apache2-foreground
