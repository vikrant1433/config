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
ln -si ~/config/.zshrc ~/.zshrc
ln -si ~/config/.zshrc.local ~/.zshrc.local

# VIM
ln -si ~/config/vimrc.local ~/.vimrc.local
ln -si ~/config/.vimrc.bundles.local ~/.vimrc.bundles.local

#TMUX
ln -si ~/config/.tmux.conf ~/.tmux.conf
mkdir  -p ~/.tmux/plugins/tpm
ln -si ~/config/tpm ~/.tmux/plugins/tpm

# LS_COLORS
ln -si ~/config/LS_COLORS/LS_COLORS ~/.dircolors

# VIM-INSTANT-MARKDOWN
mkdir -p ~/.vim/after/ftplugin/markdown/
ln -si ~/config/vim-instant-markdown/after/ftplugin/markdown/instant-markdown.vim ~/.vim/after/ftplugin/markdown/instant-markdown.vim
