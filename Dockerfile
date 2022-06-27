FROM alpine:3.11
LABEL maintainer="Byndyusoft <sstolbov@byndyusoft.com>"
ENV IMAGE_VERSION=2.13.0

RUN mkdir /ghcli
WORKDIR /ghcli

RUN apk update && \
    apk add git less openssh && \
    rm -rf /var/lib/apt/lists/* && rm /var/cache/apk/*

RUN wget https://github.com/cli/cli/releases/download/v2.13.0/gh_2.1230_linux_386.tar.gz -O ghcli.tar.gz
RUN tar --strip-components=1 -xf ghcli.tar.gz
ENV PATH="/ghcli/bin:${PATH}"
ENTRYPOINT ["gh"]
CMD ["--help"]
