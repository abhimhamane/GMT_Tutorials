#!/usr/bin/env -S bash -e
# basic GMT tutorial from GMT Docs
# 11 Dec, 2023
# IIT Kanpur, India

# Purpose - log-log plot with no data
set -e

export GMT_SESSION_NAME=11
#echo 0 0 1 1 0.2 0.2 0 > tmp.dat
#JRB="-JX3/3 -R-1/2/-1/2 -Ba1f1g1"

gmt begin outputs/GMT_tut_2 png
	# gmt velo tmp.dat #JRB -Se1.0/0.65/10 -W1p
	gmt set GMT_THEME cookbook
	gmt basemap -R1/10000/1e20/1e25 -JX9il/6il -Bxa2+l"Wavelength (m)" -Bya1pf3+l"Power (W)" -BWS
gmt end show
