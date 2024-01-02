#!/usr/bin/env -S bash -e

# GMT modern mode bash template
# Date:    2023-12-11T02:39:40
# User:    abhishek
# Purpose: basemap - 2023 GMT for Geodesy 

gmt begin outputs/basemap png

    # error -P
gmt basemap -Rg -JW180/25c -Bafg -B+tMollweide

gmt end show