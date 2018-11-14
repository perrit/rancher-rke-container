FROM busybox

RUN mkdir -p /usr/local/bin \
 && wget -cO /usr/local/bin/rke https://github.com/rancher/rke/releases/download/v0.1.11/rke_linux-amd64 \
 && chmod +x /usr/local/bin/rke
