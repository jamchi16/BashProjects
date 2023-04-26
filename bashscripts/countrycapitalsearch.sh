#!/bin/bash

#searchforacountry'scapital

read -p "What country's capital are you looking for? " countryname

awk -F "\"*,\"*"  -v country="$countryname" '$0 ~ country{print $2}' /workspaces/Code/testfiles/countriesandcapitals.csv