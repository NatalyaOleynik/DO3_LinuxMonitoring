#!/bin/bash

. ./var.sh
. ./colour.sh

echo -e "${back1}${font1}HOSTNAME${NORMAL} = ${back2}${font2}$hostname${NORMAL}"
echo -e "${back1}${font1}TIMEZONE${NORMAL} = ${back2}${font2}$timezone${NORMAL}"
echo -e "${back1}${font1}USER${NORMAL} = ${back2}${font2}$user${NORMAL}"
echo -e "${back1}${font1}OS${NORMAL} = ${back2}${font2}$os${NORMAL}"
echo -e "${back1}${font1}DATE${NORMAL} = ${back2}${font2}$date${NORMAL}"
echo -e "${back1}${font1}UPTIME${NORMAL} = ${back2}${font2}$uptime${NORMAL}"
echo -e "${back1}${font1}UPTIME_SEC${NORMAL} = ${back2}${font2}$uptime_sec${NORMAL}"
echo -e "${back1}${font1}IP${NORMAL} = ${back2}${font2}$ip${NORMAL}"
echo -e "${back1}${font1}MASK${NORMAL} = ${back2}${font2}$mask${NORMAL}"
echo -e "${back1}${font1}GATEWAY${NORMAL} = ${back2}${font2}$gateway${NORMAL}"
echo -e "${back1}${font1}RAM_TOTAL${NORMAL} = ${back2}${font2}$ram_total${NORMAL}"
echo -e "${back1}${font1}RAM_USED${NORMAL} = ${back2}${font2}$ram_used${NORMAL}"
echo -e "${back1}${font1}RAM_FREE${NORMAL} = ${back2}${font2}$ram_free${NORMAL}"
echo -e "${back1}${font1}SPACE_ROOT${NORMAL} = ${back2}${font2}$space_root${NORMAL}"
echo -e "${back1}${font1}SPACE_ROOT_USED${NORMAL} = ${back2}${font2}$space_root_used${NORMAL}"
echo -e "${back1}${font1}SPACE_ROOT_FREE${NORMAL} = ${back2}${font2}$space_root_free${NORMAL}"
echo " "

if [[ column1_background -eq 2 ]]
then
echo "Column 1 background = 2 (red)"
elif [[ column1_background -eq 6 ]]
then
echo "Column 1 background = default (black)"
fi

if [[ column1_font_color -eq 4 ]]
then
echo "Column 1 font color = 4 (blue)"
elif [[ column1_font_color -eq 1 ]]
then
echo "Column 1 font color = default (white)"
fi

if  [[ column2_background -eq 5 ]]
then
echo "Column 2 background = 5 (purple)"
elif [[ column2_background -eq 2 ]]
then
echo "Column 2 background = default (red)"
fi

if [[ column2_font_color -eq 1 ]]
then
echo "Column 2 font color = 1 (white)"
elif [[ column2_font_color -eq 3 ]]
then
echo "Column 2 font color = default (green)"
fi