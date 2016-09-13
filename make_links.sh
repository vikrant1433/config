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

# by using the SCRIPT_ABS_PATH variable you can run the script from any directory
cd "`dirname \"$0\"`"
SCRIPT_ABS_PATH=${PWD}
# ZSH
ln -fs ${SCRIPT_ABS_PATH}/.zshrc ~/.zshrc
ln -fs ${SCRIPT_ABS_PATH}/.zshrc.local ~/.zshrc.local
ln -fs ${SCRIPT_ABS_PATH}/.zshrc.local.me ~/.zshrc.local.me

# OH-MY-ZSH
mkdir -p ~/.oh-my-zsh/custom/themes/
ln -fs ${SCRIPT_ABS_PATH}/.oh-my-zsh/custom/themes/dst.zsh-theme ~/.oh-my-zsh/custom/themes/dst.zsh-theme

# ZSH-SYNTAX-HIGHLIGHTING
ln -sf ${SCRIPT_ABS_PATH}/zsh-syntax-highlighting ~/.oh-my-zsh/plugins/

# VIM
ln -sf ${SCRIPT_ABS_PATH}/.vimrc.before.local ~/.vimrc.before.local 
ln -sf ${SCRIPT_ABS_PATH}/.vimrc.local ~/.vimrc.local
ln -sf ${SCRIPT_ABS_PATH}/.vimrc.bundles.local ~/.vimrc.bundles.local

#TMUX
ln -sf ${SCRIPT_ABS_PATH}/.tmux.conf ~/.tmux.conf
mkdir  -p ~/.tmux/plugins/tpm
ln -sf ${SCRIPT_ABS_PATH}/tpm ~/.tmux/plugins/tpm

# LS_COLORS
ln -sf ${SCRIPT_ABS_PATH}/LS_COLORS/LS_COLORS ~/.dircolors

# VIM-INSTANT-MARKDOWN
mkdir -p ~/.vim/after/ftplugin/markdown/
ln -sf ${SCRIPT_ABS_PATH}/vim-instant-markdown/after/ftplugin/markdown/instant-markdown.vim ~/.vim/after/ftplugin/markdown/instant-markdown.vim

# .GITCONFIG
ln -sf ${SCRIPT_ABS_PATH}/.gitconfig ~/.gitconfig

# IDEAVIM
ln -sf ${SCRIPT_ABS_PATH}/.ideavimrc ~/.ideavimrc

# BASE16-GNOME-TERMINAL
ln -sf -t ~/.config/ ${SCRIPT_ABS_PATH}/base16-gnome-terminal

# delete  Bundle 'tpope/vim-markdown' from ~/.vimrc.bundles
# as it is conflicting with plasticboy vim-markdown
sed -i "/Bundle 'tpope\/vim-markdown'/d" ~/.vimrc.bundles


# SPACEMACS
ln -sf ${SCRIPT_ABS_PATH}/.spacemacs ~/.spacemacs


