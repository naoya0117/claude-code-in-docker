FROM node:24.4-bookworm-slim

ARG UID=1000
ARG GID=1000

# 非特権ユーザの設定
RUN (getent passwd ${UID} && /usr/sbin/userdel -r $(getent passwd ${UID} | cut -d: -f1) || true) && \
  (getent group ${GID} || groupadd -g ${GID} nonroot) && \
  /usr/sbin/useradd -u ${UID} -g ${GID} -m -s /bin/bash nonroot

RUN mkdir /.npm && chown ${UID}:${GID} /.npm

USER nonroot
WORKDIR /www
