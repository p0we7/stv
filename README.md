# STV

## Docker 直接启动

```
docker run -d -p 8080:80 --name stv ghcr.io/p0we7/stv:latest
```

## sh 启动

```
docker run --rm \
  --name stv \
  -p 8080:80 \
  -v $(pwd):/var/www/html \
  -v $(pwd)/start.sh:/usr/local/bin/start.sh \
  php:8.3.20-apache start.sh
```
