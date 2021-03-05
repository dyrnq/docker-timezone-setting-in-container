FROM archlinux:latest
ENV TZ=Asia/Shanghai

RUN pacman -Syy && \
    pacman -S --noconfirm tzdata && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone