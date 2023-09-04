#!/bin/bash

# Clonar o repositório
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1 && nvim
git clone https://github.com/Miguerfi/nvchad/ ~/nvchad-temp

# Verificar se a pasta custom existe e criar se não existir
if [ ! -d ~/.config/nvim/lua/custom ]; then
	mkdir -p ~/.config/nvim/lua/custom
fi

# Copiar os arquivos do repositório clonado para a pasta custom
cp -r ~/nvchad-temp/* ~/.config/nvim/lua/custom

# Remover a pasta temporária do repositório clonado
rm -rf ~/nvchad-temp
