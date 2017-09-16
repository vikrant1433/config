#!/bin/bash - 
#===============================================================================
#
#          FILE: configure.sh
# 
#         USAGE: ./configure.sh 
# 
#   DESCRIPTION: don't run this script as with sudo permissions
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Vikrant (), vikrant@cse.iitb.ac.in
#  ORGANIZATION: 
#       CREATED: Sunday 31 July 2016 16:31
#      REVISION:  ---
#===============================================================================

dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"

