FROM opensuse/leap:15.2
ENV TZ=Asia/Shanghai

RUN zypper mr -da && \
    zypper ar -fcg https://mirrors.ustc.edu.cn/opensuse/distribution/leap/15.2/repo/oss USTC:15.2:OSS && \
    zypper ar -fcg https://mirrors.ustc.edu.cn/opensuse/distribution/leap/15.2/repo/non-oss USTC:15.2:NON-OSS && \
    zypper ar -fcg https://mirrors.ustc.edu.cn/opensuse/update/leap/15.2/oss USTC:15.2:UPDATE-OSS && \
    zypper ar -fcg https://mirrors.ustc.edu.cn/opensuse/update/leap/15.2/non-oss USTC:15.2:UPDATE-NON-OSS && \
    zypper install --no-confirm timezone && \
    ln -fs /usr/share/zoneinfo/${TZ} /etc/localtime && \
    echo ${TZ} > /etc/timezone