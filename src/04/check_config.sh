#!/bin/bash

if ! [[ $column1_background =~ ^[1-6]$ ]]
then
column1_background=6
fi

if ! [[ $column1_font_color =~ ^[1-6]$ ]]
then
column1_font_color=1
fi

if ! [[ $column2_background =~ ^[1-6]$ ]]
then
column2_background=2
fi

if ! [[ $column2_font_color =~ ^[1-6]$ ]]
then
column2_font_color=3
fi