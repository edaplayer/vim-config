#!/bin/bash
#########################################################################
# File Name: install.sh
# Author: Edward.Tang
# mail:   @163.com
# Created Time: Mon 08 Jun 2020 09:01:00 AM PDT
#########################################################################
if grep -q -e mybashrc .bashrc ;then
	echo Nothing to do.
else
	echo "Add mybashrc."
	echo >> .bashrc
	echo "source ~/.mybashrc" >> .bashrc
fi
