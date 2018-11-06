FROM alpine as fetch
RUN ["/usr/bin/wget", "-cO", "/rke", "https://github.com/rancher/rke/releases/download/v0.1.11/rke_linux-amd64"]
RUN ["/bin/chmod", "+x", "/rke"]

FROM scratch
COPY --from=fetch /rke /rke
ENTRYPOINT ["/rke"]
