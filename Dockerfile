FROM busybox
RUN wget -cO /rke https://github.com/rancher/rke/releases/download/v0.1.11/rke_linux-amd64 && chmod +x /rke
