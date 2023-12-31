#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: Lines and Symbols - GMT for Geodesy
export GMT_SESSION_NAME=01      # Set a unique session name
cat > line.txt << END
 1 1
10 4
END

gmt begin outputs/lines png
    # Place modern session commands here
    # -J specifies projection
    # -R specifies region of interest
    # -B map boundary frame 
    # -W set pen attributes
    gmt plot line.txt -JX22c/10c -R0/12/0/5 -Ba1 -W1p,blue
gmt end show