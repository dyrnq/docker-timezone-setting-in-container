FROM clearlinux:latest
ENV TZ Asia/Shanghai

RUN swupd bundle-add tzdata && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone