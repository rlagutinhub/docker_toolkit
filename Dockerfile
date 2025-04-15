# docker build -f Dockerfile -t toolkit . # size 206MB
# docker run --rm -it toolkit:latest
# kubectl -n default run toolkit --rm -it --image=toolkit:latest

ARG ALPINE_TAG=latest
FROM alpine:${ALPINE_TAG}
LABEL maintainer="Roman Lagutin <r@lag.net.ru>"
RUN set -ex && apk add --no-cache \
    bash \
    bash-completion \
    bind-tools \
    tcpdump \
    nmap \
    curl \
    wget \
    httpie \
    whois \
    mtr \
    iperf3 \
    socat \
    netcat-openbsd \
    tmux \
    iproute2 \
    iputils \
    net-tools \
    ethtool \
    iftop \
    mc \
    vim \
    nano \
    less \
    tree \
    file \
    zip \
    unzip \
    jq \
    lsof \
    procps \
    git \
    htop \
    gotop \
    tzdata \
    python3 \
    py3-pip \
    ipython \
    && echo "PS1='\e[92m\u\e[0m@\e[94m\h\e[0m:\e[35m\w\e[0m# '" >> /root/.bashrc
ENV TERM=xterm-256color \
    TZ=Europe/Moscow
CMD ["/bin/bash"]
