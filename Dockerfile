FROM alpine:3.16

RUN apk add --update --no-cache \
  curl \
  git \
  neovim \
  npm \
  nodejs \
  && \
  npm add -g neovim \
  && \
  curl -fLo ~/.config/nvim/init.vim --create-dirs --silent \
  https://raw.githubusercontent.com/andersonjoseph/init.vim/main/init.vim \
  && \
  curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs --silent \
  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

WORKDIR /app

ENTRYPOINT /bin/sh
