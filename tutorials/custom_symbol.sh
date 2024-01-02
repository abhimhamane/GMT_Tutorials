#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: Custom Symbols - 2023 GMT for Geodesy 

# using the macro language to make custom symbols

gmt begin outputs/custon_symbol png
    gmt coast -JM15c -R65/98/5/30 -W0.5p,gray20 -Df -Sazure -B -A2500
    echo 79 20 | gmt plot -Skhousesymbol/0.5c 
gmt end show
