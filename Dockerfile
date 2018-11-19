ARG RKE_PATH=/usr/local/bin/rke
ARG RKE_URL=https://github.com/rancher/rke/releases/download/v0.1.12-rc5/rke_linux-amd64

FROM alpine as fetch
ARG RKE_PATH
ARG RKE_URL
RUN wget -cO $RKE_PATH $RKE_URL
RUN chmod +x $RKE_PATH

FROM busybox
ARG RKE_PATH
COPY --from=fetch $RKE_PATH $RKE_PATH
