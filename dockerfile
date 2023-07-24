FROM rust:latest

RUN apt update && \
    apt install vim -y
WORKDIR /workspace
ENV USER=root
ENV RUST_BACKTRACE=1

RUN curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && \
    apt install -y nodejs
