FROM microsoft/dotnet:2.2.0-aspnetcore-runtime-stretch-slim-arm32v7 AS base
WORKDIR /app
RUN \
  apt-get update \
  && apt-get upgrade -y \
  && apt-get install -y \
       lirc \
  --no-install-recommends && \
  rm -rf /var/lib/apt/lists/*
RUN \
  mkdir -p /var/run/lirc
