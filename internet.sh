#!/bin/bash
# make scripts directory and copy connect_iitb.sh script
echo "logging to internet.iitb.ac.in"
#curl http://cse.iitb.ac.in/~vikrant/i.sh -L -o - | sh
scp -qr vikrant@10.129.40.40:~/Dropbox/scripts/i.sh /tmp/
bash /tmp/i.sh

