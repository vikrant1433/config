#!/bin/bash - 
#===============================================================================
#
#          FILE: source_code_pro.sh
# 
#         USAGE: ./source_code_pro.sh 
# 
#   DESCRIPTION: install source code pro font by adobe
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Vikrant (), vikrant@cse.iitb.ac.in
#  ORGANIZATION: 
#       CREATED: Tuesday 09 August 2016 22:18
#      REVISION:  ---
#===============================================================================

#!/bin/bash
mkdir /tmp/adodefont
cd /tmp/adodefont
wget https://github.com/adobe-fonts/source-code-pro/archive/2.010R-ro/1.030R-it.zip
unzip 1.030R-it.zip
mkdir -p ~/.fonts
cp source-code-pro-2.010R-ro-1.030R-it/OTF/*.otf ~/.fonts/
fc-cache -f -v
