FROM alpine as fetch
RUN wget -cO /usr/local/bin/rke https://github.com/rancher/rke/releases/download/v0.1.12-rc5/rke_linux-amd64
RUN chmod +x /usr/local/bin/rke

FROM busybox
RUN mkdir -p /usr/local/bin
COPY --from=fetch /usr/local/bin/rke /usr/local/bin/rke
