#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: In-Built Symbols - 2023 GMT for Geodesy 

gmt begin outputs/symbols png
    # coast around India using transverse mercator centered around 78deg E and 0.5inch scale
    # -W pen for coastline (outline)
    # -G fill for shape
    # -S ocean fill
    # -R is region of interest
    # -A removes features < 300km
    # -B for outline and annotations
    gmt coast -Jt78/0.5i -R65/98/5/38 -W0.5p,gray20 -EIT+gred -Df -Sazure -A300 -B

    # first echoing the coordinates of star symbol, or one can also use text file
    # -S for symbol, s for star
    echo 76 19 | gmt plot -Sa1c -W0.3p,gray20 -Gred

    echo 78 28 | gmt plot -Skvolcano/2c -W0.1p,blue -Gorange
gmt end show