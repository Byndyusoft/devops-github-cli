FROM alpine:3.11
LABEL maintainer="Byndyusoft <sstolbov@byndyusoft.com>"
ENV IMAGE_VERSION=1.11.0

RUN mkdir /ghcli
WORKDIR /ghcli

RUN apk update && \
    apk add git less openssh && \
    rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*

RUN wget https://github.com/cli/cli/releases/download/v1.11.0/gh_1.11.0_linux_386.tar.gz -O ghcli.tar.gz
RUN tar --strip-components=1 -xf ghcli.tar.gz
RUN wget https://github.com/cli/cli/releases/download/v1.11.0/gh_1.11.0_linux_amd64.tar.gz
ENV PATH=/ghcli/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
ENTRYPOINT ["git"]
CMD ["--help"]
