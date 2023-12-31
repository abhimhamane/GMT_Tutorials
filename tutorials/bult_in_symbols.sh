#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: In-Built Symbols - 2023 GMT for Geodesy 

gmt begin outputs/symbols png
    # coast around India using transverse mercator centered around 78deg E and 0.5inch scale
    gmt coast -Jt78/0.1i -R65/98/5/38 -W -Gwheat -EIT+gred -Df -Sazure -B -L-/0.05i

gmt end show