#!/usr/bin/env -S bash -e
# basic GMT tutorial from GMT Docs
# 11 Dec, 2023
# IIT Kanpur, India

# Purpose - Italy map using GMT following GMT for Geodesy Tutorial
export GMT_SESSION_NAME=65
gmt begin outputs/india pdf,png # modern GMT session and calling plot italy-> pdf and png outputs
    # lay down painted continent with national borders with mercator proj
    gmt coast -R65/100/5/38 -Wthin -Gwheat -EIT+gred -Df -Sazure -B -N1/thick,red -JM15c
    gmt inset begin -DjTR+w4c+o0.2c -F+gwhite+pthick
        gmt coast -Rg -JG78E/15N/? -Gwheat -Bg -EIT+gred
    gmt inset end
gmt end show
