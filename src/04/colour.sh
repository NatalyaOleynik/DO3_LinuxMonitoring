#!/bin/bash

. ./func.sh

# Цвет текста:
BLACK='\033[30m'		#	${BLACK}		
RED='\033[31m'			#	${RED}			
GREEN='\033[32m'		#	${GREEN}		
BLUE='\033[34m'			#	${BLUE}			
PURPLE='\033[35m'		#	${PURPLE}		
WHITE='\033[37m'		#	${WHITE}		

# Цвет фона
BGBLACK='\033[40m'		#	${BGBLACK}
BGRED='\033[41m'		#	${BGRED}
BGGREEN='\033[42m'		#	${BGGREEN}
BGBLUE='\033[44m'		#	${BGBLUE}
BGPURPLE='\033[45m'	#	${BGPURPLE}
BGWHITE='\033[47m'		#	${BGWHITE}

NORMAL='\033[0m'		#	${NORMAL}

back1=$(colour_back $column1_background) #   фон названий значений
font1=$(colour_font $column1_font_color) #   цвет шрифта названий значений
back2=$(colour_back $column2_background) #   фон значений (после знака '=')
font2=$(colour_font $column2_font_color) #   цвет шрифта значений (после знака '=')