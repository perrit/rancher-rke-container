FROM alpine as fetch
RUN wget -cO /tmp/rke https://github.com/rancher/rke/releases/download/v0.1.11/rke_linux-amd64
RUN chmod +x /tmp/rke

FROM busybox
RUN mkdir -p /usr/local/bin
COPY --from=fetch /tmp/rke /usr/local/bin/rke
