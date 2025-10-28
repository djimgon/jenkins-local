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

# (опционально) задаём часовой пояс, если хочешь свой
ENV TZ=America/Los_Angeles

# возвращаемся под пользователя jenkins
USER jenkins