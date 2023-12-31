#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: basemap - 2023 GMT for Geodesy 

gmt begin outputs/basemap png

gmt psbasemap -R0/9/0/5 -Jx1c -Bf1a2 -Bx+lDistance -By+l"No of samples" -BWeSn -P > linear.ps
gmt end show