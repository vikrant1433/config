#!/bin/bash
# running script hosted on http://cse.iitb.ac.in/~vikrant/i.sh
echo -e "logging to internet.iitb.ac.in"
curl --silent -o /dev/null --data "uname=153050031&passwd=123456@" https://internet.iitb.ac.in/index.php 

