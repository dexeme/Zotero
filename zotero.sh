#!/bin/bash

# Cria o atalho da linha de comando
SH_PATH=$(realpath "$0")
if [ ! -f ~/.bash_aliases ] || ! grep -q "^alias zotero" ~/.bash_aliases; then
  echo alias zotero="\"${SH_PATH}\"" >> ~/.bash_aliases
fi

# Mudar cwd para diretório do repositório
cd $(dirname "$0")

# Baixar arquivos do Zotero se ainda não disponíveis
if [ ! -f ./zotero ]; then
  curl -L -o ./zotero.tar.bz2 "https://www.zotero.org//download/client/dl?channel=release&platform=linux-x86_64&version=7.0.11"
  tar -xvjf zotero.tar.bz2 -C . --strip-components=1
  rm zotero.tar.bz2
fi

# Buscar por atualizações no repositório remoto
git pull

# Executar Zotero
./zotero

# Subir as mudanças para o GitHub
if [[ `git status --porcelain` ]]; then
  git add .
  git commit -m "atualiza dados"
  git push
fi
