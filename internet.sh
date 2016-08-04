#!/bin/bash
# running script hosted on http://cse.iitb.ac.in/~vikrant/i.sh
echo -e "logging to internet.iitb.ac.in"
curl --silent http://cse.iitb.ac.in/~vikrant/i.sh -L -o - | sh

