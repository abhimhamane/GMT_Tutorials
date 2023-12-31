#!/usr/bin/env -S bash -e
# basic GMT tutorial from GMT Docs
# 11 Dec, 2023
# IIT Kanpur, India

# Purpose - basic geospatial data plotting
set -e

export GMT_SESSION_NAME=11
gmt begin outputs/GMT_tut_3 png
	gmt set GMT_THEME cookbook
    # coast -> coastline data
	gmt coast -R55/100/0/30 -JM6i -B -Ggray
gmt end show