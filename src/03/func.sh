#!/bin/bash

function colour_back(){
    local colour=$1
    if [[ colour -eq 1 ]]
    then 
    echo ${BGWHITE}
    elif [[ colour -eq 2 ]]
    then
    echo ${BGRED}
    elif [[ colour -eq 3 ]]
    then
    echo ${BGGREEN}
    elif [[ colour -eq 4 ]]
    then
    echo ${BGBLUE}
    elif [[ colour -eq 5 ]]
    then
    echo ${BGPURPLE}
    elif [[ colour -eq 6 ]]
    then
    echo ${BGBLACK}
    fi
}


function colour_font(){
    local colour=$1
    if [[ colour -eq 1 ]]
    then 
    echo ${WHITE}
    elif [[ colour -eq 2 ]]
    then
    echo ${RED}
    elif [[ colour -eq 3 ]]
    then
    echo ${GREEN}
    elif [[ colour -eq 4 ]]
    then
    echo ${BLUE}
    elif [[ colour -eq 5 ]]
    then
    echo ${PURPLE}
    elif [[ colour -eq 6 ]]
    then
    echo ${BLACK}
    fi
}