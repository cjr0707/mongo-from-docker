# 打包命令
```docker
docker build --rm -t spider-mongo:4.4.0 -f Dockerfile .
docker tag spider-mongo:4.4.0 cjr0707/spider-mongo:4.4.0
docker push cjr0707/spider-mongo:4.4.0
```

# 运行命令
```docker
docker run -d --name spider-mongo \
    -v /data/db/mongo:/data/db \
    -p 27017:27017 cjr0707/spider-mongo:4.4.0
# 或者加上restart
docker run -d --name spider-mongo \
    --restart always \
    -v /data/db/mongo:/data/db \
    -p 27017:27017 cjr0707/spider-mongo:4.4.0
```

# 容器中

配置文件在`/etc/mongo/mongo.conf`

rdb在`/data/db`
