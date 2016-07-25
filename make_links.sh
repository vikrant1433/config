#!/bin/bash - 
#===============================================================================
#
#          FILE: make_links.sh
# 
#         USAGE: ./make_links.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Vikrant, 
#  ORGANIZATION: 
#       CREATED: Tuesday 19 July 2016 20:01
#      REVISION:  ---
#===============================================================================

# ZSH
ln -fs ~/config/.zshrc ~/.zshrc
ln -fs ~/config/.zshrc.local ~/.zshrc.local
ln -fs ~/config/.zshrc.local.me ~/.zshrc.local.me

# OH-MY-ZSH
mkdir -p ~/.oh-my-zsh/custom/themes/
ln -fs ~/config/.oh-my-zsh/custom/themes/dst.zsh-theme ~/.oh-my-zsh/custom/themes/dst.zsh-theme

# VIM
ln -sf ~/config/vimrc.local ~/.vimrc.local
ln -sf ~/config/.vimrc.bundles.local ~/.vimrc.bundles.local

#TMUX
ln -sf ~/config/.tmux.conf ~/.tmux.conf
mkdir  -p ~/.tmux/plugins/tpm
ln -sf ~/config/tpm ~/.tmux/plugins/tpm

# LS_COLORS
ln -sf ~/config/LS_COLORS/LS_COLORS ~/.dircolors

# VIM-INSTANT-MARKDOWN
mkdir -p ~/.vim/after/ftplugin/markdown/
ln -sf ~/config/vim-instant-markdown/after/ftplugin/markdown/instant-markdown.vim ~/.vim/after/ftplugin/markdown/instant-markdown.vim

# .gitconfig
ln -sf ~/config/.gitconfig ~/.gitconfig
