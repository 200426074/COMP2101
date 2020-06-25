#!/bin/bash
#
# This script produces a dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Task 1: Use the variable $USER instead of the myname variable to get your name
# Task 2: Dynamically generate the value for your hostname variable using the hostname command - e.g. $(hostname)
# Task 3: Add the time and day of the week to the welcome message using the format shown below
#   Use a format like this:
#   It is weekday at HH:MM AM.
# Task 4: Set the title using the day of the week
#   e.g. On Monday it might be Optimist, Tuesday might be Realist, Wednesday might be Pessimist, etc.
#   You will need multiple tests to set a title
#   Invent your own titles, do not use the ones from this example

###############
# Variables   #
###############
envuser="$USER" #Getting dynamic user name
hostname="$(hostname)" #getting Dynamic hostname
day=$(date +%A) #getting day name
currenttime=$(date +%I:%M\ %p) #getting formated time
###############
# Main        #
###############
if [ "$day" = Monday ]; #if else condition for checking
then
csay="Welcome to planet $hostname, techy guy $envuser!"
elif [ "$day" = Tuesday ]; #comparing the string
then
csay="Welcome to planet $hostname, technology expert $envuser!" #saving variable
elif [ "$day" = Wednesday ];
then
csay="Welcome to planet $hostname, worchoholic $envuser!"
elif [ "$day" = Thursday ];
then
csay="Welcome to planet $hostname, network architect $envuser!"
elif [ "$day" = Friday ];
then
csay="Welcome to planet $hostname, innocent $envuser!"
elif [ "$day" = Saturday ];
then
csay="Welcome to planet $hostname, you $envuser!"
else
csay="Welcome to planet $hostname, extrovert $envuser!"
fi
cowsay "$csay It is $currenttime on $day ." #giving output to cowsay for printing
