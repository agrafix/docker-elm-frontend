FROM ubuntu:14.04
RUN apt-get update -y && apt-get install -y nodejs npm
RUN npm install -g n
RUN n 4.0.0
RUN npm install -g elm@0.16.0 gulp@3.8.11 bower@1.3.12
RUN node --version && npm --version && elm-make --version 2>&1 >/dev/null | head -n1