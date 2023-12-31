#!/usr/bin/env -S bash -e
# GMT modern mode bash template
# Date:    2023-12-11T03:13:59
# User:    abhishek
# Purpose: GMT for Geodesy tutorial
set -e 
JRB="-JX3/3 -R-1/2/-1/2 -Bafg"
gmt begin outputs/vector png
	# Place modern session commands here
	echo "0 0 1 1 0.2 0.1 0" | gmt velo $JRB -Se1.0/0.65/10 -W1p,"Vector Plot"
gmt end show
