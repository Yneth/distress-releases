ARG version=0.1.6

FROM alpine:latest
ARG version
ARG TARGETPLATFORM

RUN \ 
  case ${TARGETPLATFORM} in \
    "linux/386")  asset_name="distress_i686-unknown-linux-musl"  ;; \
    "linux/amd64")  asset_name="distress_x86_64-unknown-linux-musl"  ;; \
    "linux/arm64") asset_name="distress_aarch64-unknown-linux-musl"  ;; \
  esac && \
  wget https://github.com/Yneth/distress-releases/releases/download/${version}/${asset_name} -O /usr/local/bin/distress && \
  chmod +x /usr/local/bin/distress

ENTRYPOINT [ "/usr/local/bin/distress" ]
