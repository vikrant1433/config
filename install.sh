#!/bin/bash - 
#===============================================================================
#
#          FILE: install.sh
# 
#         USAGE: ./install.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: Monday 18 July 2016 22:14
#      REVISION:  ---
#===============================================================================

# ZSH
#
############################################################################
# install zsh
# if zsh is not installed
if [ $(dpkg-query -W -f='${Status}' zsh 3>/dev/null | grep -c "ok installed") -eq 0 ]; then
    # exit if not a sudo user
    if [ $(sudo -v | grep -c "sudo") -gt 0 ]; then
        echo "don't have sudo rights exiting..."
        exit
    fi
    echo "installing zsh..."
    sudo apt-get install zsh -y
else
    echo "zsh already installed"
fi
############################################################################
#
# install vim-gnome
# if vim-gnome is not installed
if [ $(dpkg-query -W -f='${Status}' vim-gnome 3>/dev/null | grep -c "ok installed") -eq 0 ]; then
    # exit if not a sudo user
    if [ $(sudo -v | grep -c "sudo") -gt 0 ]; then
        echo "don't have sudo rights exiting..."
        exit
    fi
    echo "installing vim-gnome..."
    sudo apt-get install vim-gnome -y
else
    echo "vim-gnome already installed"
fi

#-------------------------------------------------------------------------------
# install tmux
#-------------------------------------------------------------------------------

if [ $(dpkg-query -W -f='${Status}' tmux 3>/dev/null | grep -c "ok installed") -eq 0 ]; then
    # exit if not a sudo user
    if [ $(sudo -v | grep -c "sudo") -gt 0 ]; then
        echo "don't have sudo rights exiting..."
        exit
    fi
    echo "installing tmux..."
    sudo apt-get install tmux -y
else
    echo "tmux already installed"
fi

#-------------------------------------------------------------------------------
# install etckeeper to put /etc/ directory under version control
#-------------------------------------------------------------------------------
if [ $(dpkg-query -W -f='${Status}' etckeeper 3>/dev/null | grep -c "ok installed") -eq 0 ]; then
    # exit if not a sudo user
    if [ $(sudo -v | grep -c "sudo") -gt 0 ]; then
        echo "don't have sudo rights exiting..."
        exit
    fi
    echo "installing etckeeper..."
    sudo apt-get install etckeeper -y
else
    echo "etckeeper already installed"
fi
#-------------------------------------------------------------------------------
# install clang-format
#-------------------------------------------------------------------------------
if [ $(dpkg-query -W -f='${Status}' clang-format 3>/dev/null | grep -c "ok installed") -eq 0 ]; then
    # exit if not a sudo user
    if [ $(sudo -v | grep -c "sudo") -gt 0 ]; then
        echo "don't have sudo rights exiting..."
        exit
    fi
    echo "installing clang-format..."
    sudo apt-get install clang-format -y
else
    echo "clang-format already installed"
fi

############################################################################
# VIM-SPF13
#
############################################################################
# install vim-spf13
# if spf13-vim3 directory is not there install vim-spf13
if [ ! -d ~/.spf13-vim-3 ]; then
    echo "installing vim-spf13"
    curl http://j.mp/spf13-vim3 -L -o - | sh
else
    echo "vim-spf13 already installed"
fi

#
# OH-MY-ZSH
#
############################################################################
# install oh-my-zsh
if [ ! -d ~/.oh-my-zsh ]; then
    echo "installing oh-my-zsh"
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
else
    echo "oh-my-zsh already installed"
fi

# vim plugin install
vim +BundleInstall +BundleClean +q
