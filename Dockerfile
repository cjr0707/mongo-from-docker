FROM mongo:4.4.0

MAINTAINER cjr0707

ENV TZ Asia/Shanghai

COPY mongod.conf /etc/mongo/mongod.conf

CMD ["mongod","-f", "/etc/mongo/mongod.conf"]
