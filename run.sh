#!/bin/bash - 
#===============================================================================
#
#          FILE: run.sh
# 
#         USAGE: ./run.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Vikrant (), vikrant@cse.iitb.ac.in
#  ORGANIZATION: 
#       CREATED: Tuesday 26 July 2016 09:07
#      REVISION:  ---
#===============================================================================

# bash internet.sh
git submodule update --init
git pull --all
bash install.sh
bash make_links.sh
rm ~/.zcompdump
bash configure.sh
chsh -s $(which zsh)
