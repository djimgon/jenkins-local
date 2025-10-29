FROM jenkins/jenkins:alpine

USER root

# ставим docker CLI + compose plugin + buildx
RUN apk add --no-cache \
      docker-cli \
      docker-cli-compose \
      docker-cli-buildx \
      git \
      bash \
      curl \
      tzdata \
      make

RUN apk add --no-cache shadow && \
    addgroup -g 82 -S www-data || true; \
    adduser jenkins www-data   || true; \
    echo 'umask 0002' >> /etc/profile

# возвращаемся под пользователя jenkins
USER jenkins