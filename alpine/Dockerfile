FROM alpine:3.13.2
ENV TZ=Asia/Shanghai

RUN apk add tzdata && \
    ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone