FROM alpine:3.9

ENV TZ America/Sao_Paulo
ENV MIRROR_LIST mirrors.ustc.edu.cn
RUN sed -i "s/dl-cdn.alpinelinux.org/$MIRROR_LIST/" /etc/apk/repositories && \
    apk upgrade --no-cache && \
    apk add --no-cache tzdata 
