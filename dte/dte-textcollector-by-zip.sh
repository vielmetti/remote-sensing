#!/bin/bash
#
# for a given zip code, output one line which shows the current outage count
#
# best thought of as a general indicator rather than a specific exact
# count. update frequency from DTE is not specified.
#
# this is not an official API and may break at any time.
#
echo -n "outage_dte{zip=\"$1\"} " 
curl -m 30 -s 'http://outagemap.serv.dteenergy.com/GISRest/services/OMP/OutageLocations/MapServer//find?f=json&searchText='$1'&contains=false&returnGeometry=false&layers=1&searchFields=ZIP&callback=' | jq '.results[].attributes.RPT_CUST_STILL_OUT // 0 | tonumber ' 2>/dev/null   
